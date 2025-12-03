@interface _PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer
+ (BOOL)_targetFavoriteStateForAssetCollectionReference:(id)reference;
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation _PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer

- (void)performBackgroundTask
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  assetCollectionReference = [(PXAssetCollectionActionPerformer *)self assetCollectionReference];
  v6 = [v4 _targetFavoriteStateForAssetCollectionReference:assetCollectionReference];

  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (![assetCollection px_isMemory])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:967 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = assetCollection;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v16 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:950 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:950 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v16}];
  }

LABEL_4:
  v9 = [PXFavoriteMemoriesAction alloc];
  v25[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v11 = [(PXFavoriteMemoriesAction *)v9 initWithMemories:v10 favorite:v6];

  if (!v11)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:953 description:{@"Invalid parameter not satisfying: %@", @"action != nil"}];
  }

  undoManager = [(PXActionPerformer *)self undoManager];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82___PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer_performBackgroundTask__block_invoke;
  v21[3] = &unk_1E7742910;
  v24 = v6;
  v22 = v8;
  selfCopy = self;
  v13 = v8;
  [(PXAction *)v11 executeWithUndoManager:undoManager completionHandler:v21];
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

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  v7 = [objc_opt_class() _targetFavoriteStateForAssetCollectionReference:referenceCopy];

  v8 = @"Standard";
  if (!case)
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

+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  if ([self _targetFavoriteStateForAssetCollectionReference:{reference, inputs}])
  {
    v4 = @"heart";
  }

  else
  {
    v4 = @"heart.slash";
  }

  return v4;
}

+ (BOOL)_targetFavoriteStateForAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:902 description:{@"Method %s is a responsibility of subclass %@", "+[_PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer _targetFavoriteStateForAssetCollectionReference:]", v8}];

  abort();
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if ([assetCollection px_isMemory])
  {
    px_canEditFavoriteState = [assetCollection px_canEditFavoriteState];
  }

  else
  {
    px_canEditFavoriteState = 0;
  }

  return px_canEditFavoriteState;
}

@end