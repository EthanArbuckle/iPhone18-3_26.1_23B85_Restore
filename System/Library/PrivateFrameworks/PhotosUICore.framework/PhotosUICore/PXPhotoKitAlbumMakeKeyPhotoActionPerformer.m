@interface PXPhotoKitAlbumMakeKeyPhotoActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitAlbumMakeKeyPhotoActionPerformer

+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PXPhotoKitAlbumMakeKeyPhotoActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = v7;
  v9 = v7;
  v10 = [v8 actionWithTitle:a3 image:a4 identifier:0 handler:v12];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v9 = [a4 px_fetchAncestorThatSupportsCustomKeyAssets];
  v10 = v9;
  LOBYTE(v11) = 0;
  if (!a6 && !a5 && a3 && v9)
  {
    v11 = [v9 isTransient] ^ 1;
  }

  return v11;
}

- (void)performBackgroundTask
{
  v4 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v5 = [v4 allKeys];
  v6 = [v5 firstObject];

  v7 = [v6 px_fetchAncestorThatSupportsCustomKeyAssets];
  v8 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 firstObject];

  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAlbumMakeKeyPhotoActionPerformer.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"editableAssetCollection"}];

    if (v10)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAlbumMakeKeyPhotoActionPerformer.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    goto LABEL_4;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAlbumMakeKeyPhotoActionPerformer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];

  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [[PXMakeKeyAssetAction alloc] initWithAssetCollection:v7 keyAsset:v10];
  v12 = [(PXActionPerformer *)self undoManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__PXPhotoKitAlbumMakeKeyPhotoActionPerformer_performBackgroundTask__block_invoke;
  v16[3] = &unk_1E774C5C0;
  v16[4] = self;
  [(PXAction *)v11 executeWithUndoManager:v12 completionHandler:v16];
}

@end