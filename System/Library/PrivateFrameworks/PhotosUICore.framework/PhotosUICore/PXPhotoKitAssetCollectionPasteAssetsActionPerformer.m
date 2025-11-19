@interface PXPhotoKitAssetCollectionPasteAssetsActionPerformer
+ (BOOL)canPerformActionType:(id)a3 onAssetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitAssetCollectionPasteAssetsActionPerformer

+ (BOOL)canPerformActionType:(id)a3 onAssetCollectionReference:(id)a4 withInputs:(id)a5
{
  v7 = [a4 assetCollection];
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v13}];
LABEL_11:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v13, v15}];

    goto LABEL_11;
  }

LABEL_3:
  if (![v7 canPerformEditOperation:3] || (objc_msgSend(v7, "px_isRecentlyDeletedSmartAlbum") & 1) != 0 || (objc_msgSend(v7, "px_isSharedAlbum") & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v8 = [v10 px_containsAssets];
  }

  return v8;
}

- (void)performBackgroundTask
{
  v4 = [(PXAssetCollectionActionPerformer *)self dropTargetAssetReference];
  v5 = [v4 asset];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v5 px_descriptionForAssertionMessage];
      [v15 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:36 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.dropTargetAssetReference.asset", v17, v18}];
    }
  }

  v6 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v8 = [v7 px_assets];

  if (v6 && ([v8 count] > 1 || objc_msgSend(v8, "count") == 1 && (objc_msgSend(v8, "lastObject"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != v5)))
  {
    if (([v6 canPerformEditOperation:3] & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:42 description:{@"Attempting to paste into a non-editable collection: %@", v6}];
    }

    v10 = [[PXAddAssetsToAssetCollectionAction alloc] initWithAssets:v8 assetCollection:v6];
    v11 = [(PXAssetCollectionActionPerformer *)self dropTargetAssetReference];
    v12 = [v11 asset];

    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v12 px_descriptionForAssertionMessage];
        [v20 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionPasteAssetsActionPerformer.m" lineNumber:44 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.dropTargetAssetReference.asset", v22, v23}];
      }
    }

    [(PXAddAssetsToAssetCollectionAction *)v10 setDropTargetAsset:v12];

    v13 = [(PXActionPerformer *)self undoManager];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__PXPhotoKitAssetCollectionPasteAssetsActionPerformer_performBackgroundTask__block_invoke;
    v24[3] = &unk_1E774AEC0;
    v25 = v8;
    v26 = v6;
    v27 = self;
    [(PXAction *)v10 executeWithUndoManager:v13 completionHandler:v24];
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