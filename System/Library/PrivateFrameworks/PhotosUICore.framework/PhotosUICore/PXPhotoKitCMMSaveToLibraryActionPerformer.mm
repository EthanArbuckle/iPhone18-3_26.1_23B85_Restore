@interface PXPhotoKitCMMSaveToLibraryActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitCMMSaveToLibraryActionPerformer

- (void)performBackgroundTask
{
  v13[1] = *MEMORY[0x1E69E9840];
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2292 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v9}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2292 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v9, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v13[0] = assetCollection;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PXPhotoKitCMMSaveToLibraryActionPerformer_performBackgroundTask__block_invoke;
  v12[3] = &unk_1E774C5C0;
  v12[4] = self;
  PXMomentShareSaveAllAssetsToLibrary(v6, px_deprecated_appPhotoLibrary, v12);
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  v13[1] = *MEMORY[0x1E69E9840];
  assetCollection = [reference assetCollection];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
    goto LABEL_8;
  }

  v6 = assetCollection;

  if (!v6)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
  v12 = 0;
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = PXMomentSharesSupportsSavingAssetsToLibrary(v7, &v12, &v11);

  v9 = 0;
  if (v8)
  {
    if (v12)
    {
      PXMenuItemTitleForSavingMomentShareAssetsToLibrary(v12, v11);
    }

    v9 = PXLocalizedStringFromTable(@"PXCMMSaveToLibraryActionMenuTitle", @"PhotosUICore");
  }

LABEL_9:

  return v9;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  v11[1] = *MEMORY[0x1E69E9840];
  assetCollection = [reference assetCollection];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
    goto LABEL_9;
  }

  v5 = assetCollection;

  if (!v5)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v10 = 0;
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = PXMomentSharesSupportsSavingAssetsToLibrary(v6, &v10, 0);
  if (v10)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  return v8;
}

@end