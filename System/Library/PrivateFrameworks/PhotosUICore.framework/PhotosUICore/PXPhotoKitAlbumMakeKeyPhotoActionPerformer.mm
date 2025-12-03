@interface PXPhotoKitAlbumMakeKeyPhotoActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitAlbumMakeKeyPhotoActionPerformer

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PXPhotoKitAlbumMakeKeyPhotoActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 actionWithTitle:title image:image identifier:0 handler:v12];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  px_fetchAncestorThatSupportsCustomKeyAssets = [collection px_fetchAncestorThatSupportsCustomKeyAssets];
  v10 = px_fetchAncestorThatSupportsCustomKeyAssets;
  LOBYTE(v11) = 0;
  if (!group && !person && asset && px_fetchAncestorThatSupportsCustomKeyAssets)
  {
    v11 = [px_fetchAncestorThatSupportsCustomKeyAssets isTransient] ^ 1;
  }

  return v11;
}

- (void)performBackgroundTask
{
  assetsByAssetCollection = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject = [allKeys firstObject];

  px_fetchAncestorThatSupportsCustomKeyAssets = [firstObject px_fetchAncestorThatSupportsCustomKeyAssets];
  assetsByAssetCollection2 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v9 = [assetsByAssetCollection2 objectForKeyedSubscript:firstObject];
  firstObject2 = [v9 firstObject];

  if (firstObject)
  {
    if (px_fetchAncestorThatSupportsCustomKeyAssets)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAlbumMakeKeyPhotoActionPerformer.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"editableAssetCollection"}];

    if (firstObject2)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAlbumMakeKeyPhotoActionPerformer.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAlbumMakeKeyPhotoActionPerformer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];

  if (!px_fetchAncestorThatSupportsCustomKeyAssets)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!firstObject2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [[PXMakeKeyAssetAction alloc] initWithAssetCollection:px_fetchAncestorThatSupportsCustomKeyAssets keyAsset:firstObject2];
  undoManager = [(PXActionPerformer *)self undoManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__PXPhotoKitAlbumMakeKeyPhotoActionPerformer_performBackgroundTask__block_invoke;
  v16[3] = &unk_1E774C5C0;
  v16[4] = self;
  [(PXAction *)v11 executeWithUndoManager:undoManager completionHandler:v16];
}

@end