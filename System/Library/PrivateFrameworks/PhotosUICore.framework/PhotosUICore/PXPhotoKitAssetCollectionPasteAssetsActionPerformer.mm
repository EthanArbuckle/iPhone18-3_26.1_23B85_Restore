@interface PXPhotoKitAssetCollectionPasteAssetsActionPerformer
+ (BOOL)canPerformActionType:(id)type onAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitAssetCollectionPasteAssetsActionPerformer

+ (BOOL)canPerformActionType:(id)type onAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
LABEL_11:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, px_descriptionForAssertionMessage}];

    goto LABEL_11;
  }

LABEL_3:
  if (![assetCollection canPerformEditOperation:3] || (objc_msgSend(assetCollection, "px_isRecentlyDeletedSmartAlbum") & 1) != 0 || (objc_msgSend(assetCollection, "px_isSharedAlbum") & 1) != 0)
  {
    px_containsAssets = 0;
  }

  else
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    px_containsAssets = [generalPasteboard px_containsAssets];
  }

  return px_containsAssets;
}

- (void)performBackgroundTask
{
  dropTargetAssetReference = [(PXAssetCollectionActionPerformer *)self dropTargetAssetReference];
  asset = [dropTargetAssetReference asset];

  if (asset)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:36 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.dropTargetAssetReference.asset", v17, px_descriptionForAssertionMessage}];
    }
  }

  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  px_assets = [generalPasteboard px_assets];

  if (assetCollection && ([px_assets count] > 1 || objc_msgSend(px_assets, "count") == 1 && (objc_msgSend(px_assets, "lastObject"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != asset)))
  {
    if (([assetCollection canPerformEditOperation:3] & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:42 description:{@"Attempting to paste into a non-editable collection: %@", assetCollection}];
    }

    v10 = [[PXAddAssetsToAssetCollectionAction alloc] initWithAssets:px_assets assetCollection:assetCollection];
    dropTargetAssetReference2 = [(PXAssetCollectionActionPerformer *)self dropTargetAssetReference];
    asset2 = [dropTargetAssetReference2 asset];

    if (asset2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        px_descriptionForAssertionMessage2 = [asset2 px_descriptionForAssertionMessage];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:44 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.dropTargetAssetReference.asset", v22, px_descriptionForAssertionMessage2}];
      }
    }

    [(PXAddAssetsToAssetCollectionAction *)v10 setDropTargetAsset:asset2];

    undoManager = [(PXActionPerformer *)self undoManager];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__PXPhotoKitAssetCollectionPasteAssetsActionPerformer_performBackgroundTask__block_invoke;
    v24[3] = &unk_1E774AEC0;
    v25 = px_assets;
    v26 = assetCollection;
    selfCopy = self;
    [(PXAction *)v10 executeWithUndoManager:undoManager completionHandler:v24];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer did not complete successfully"];
    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:v14];
  }
}

void __76__PXPhotoKitAssetCollectionPasteAssetsActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "failed adding assets to album: %@ %@ %@", &v9, 0x20u);
    }
  }

  [*(a1 + 48) completeBackgroundTaskWithSuccess:a2 error:v5];
}

@end