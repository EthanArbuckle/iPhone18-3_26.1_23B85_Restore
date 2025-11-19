@interface _PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer
+ (BOOL)_targetFavoriteStateForAssetCollectionReference:(id)a3;
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation _PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer

- (void)performBackgroundTask
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v6 = [v4 _targetFavoriteStateForAssetCollectionReference:v5];

  v7 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (![v7 px_isMemory])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:967 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v16 = NSStringFromClass(v18);
    v19 = [v8 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:950 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v16, v19}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:950 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v16}];
  }

LABEL_4:
  v9 = [PXFavoriteMemoriesAction alloc];
  v25[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v11 = [(PXFavoriteMemoriesAction *)v9 initWithMemories:v10 favorite:v6];

  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:953 description:{@"Invalid parameter not satisfying: %@", @"action != nil"}];
  }

  v12 = [(PXActionPerformer *)self undoManager];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82___PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer_performBackgroundTask__block_invoke;
  v21[3] = &unk_1E7742910;
  v24 = v6;
  v22 = v8;
  v23 = self;
  v13 = v8;
  [(PXAction *)v11 executeWithUndoManager:v12 completionHandler:v21];
}

- (void)performUserInteractionTask
{
  v4 = [PXContentSyndicationAssetSavingHelper assetSavingHelperFromAssetCollectionActionPerformer:self];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87___PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer_performUserInteractionTask__block_invoke;
  v5[3] = &unk_1E7730888;
  v5[4] = self;
  v5[5] = a2;
  [v4 performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion:v5];
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v6 = a4;
  v7 = [objc_opt_class() _targetFavoriteStateForAssetCollectionReference:v6];

  v8 = @"Standard";
  if (!a3)
  {
    v8 = @"Preview";
  }

  v9 = @"Unfavorite";
  if (v7)
  {
    v9 = @"Favorite";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXPhotoKitAssetCollectionManager%@ActionTitle_%@Memory", v8, v9];
  v11 = PXLocalizedStringFromTable(v10, @"PhotosUICore");

  return v11;
}

+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  if ([a1 _targetFavoriteStateForAssetCollectionReference:{a3, a4}])
  {
    v4 = @"heart";
  }

  else
  {
    v4 = @"heart.slash";
  }

  return v4;
}

+ (BOOL)_targetFavoriteStateForAssetCollectionReference:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:902 description:{@"Method %s is a responsibility of subclass %@", "+[_PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer _targetFavoriteStateForAssetCollectionReference:]", v8}];

  abort();
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = [a3 assetCollection];
  if ([v4 px_isMemory])
  {
    v5 = [v4 px_canEditFavoriteState];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end