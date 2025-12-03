@interface PXMakeKeyAssetAction
- (PXMakeKeyAssetAction)initWithAssetCollection:(id)collection keyAsset:(id)asset;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXMakeKeyAssetAction

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__PXMakeKeyAssetAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
}

void __36__PXMakeKeyAssetAction_performUndo___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) assetCollection];
  v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v4];
  v3 = [*(a1 + 32) undoKeyAsset];
  [v2 setCustomKeyAsset:v3];
}

- (void)performAction:(id)action
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__PXMakeKeyAssetAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:action];
}

void __38__PXMakeKeyAssetAction_performAction___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) assetCollection];
  v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v4];
  v3 = [*(a1 + 32) redoKeyAsset];
  [v2 setCustomKeyAsset:v3];
}

- (PXMakeKeyAssetAction)initWithAssetCollection:(id)collection keyAsset:(id)asset
{
  collectionCopy = collection;
  assetCopy = asset;
  photoLibrary = [collectionCopy photoLibrary];
  v15.receiver = self;
  v15.super_class = PXMakeKeyAssetAction;
  v10 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_assetCollection, collection);
    objc_storeStrong(&v10->_redoKeyAsset, asset);
    v11 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:collectionCopy options:0];
    firstObject = [v11 firstObject];
    undoKeyAsset = v10->_undoKeyAsset;
    v10->_undoKeyAsset = firstObject;
  }

  return v10;
}

@end