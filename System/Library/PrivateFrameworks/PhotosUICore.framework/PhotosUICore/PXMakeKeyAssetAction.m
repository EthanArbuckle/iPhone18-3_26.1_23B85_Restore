@interface PXMakeKeyAssetAction
- (PXMakeKeyAssetAction)initWithAssetCollection:(id)a3 keyAsset:(id)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXMakeKeyAssetAction

- (void)performUndo:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__PXMakeKeyAssetAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __36__PXMakeKeyAssetAction_performUndo___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) assetCollection];
  v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v4];
  v3 = [*(a1 + 32) undoKeyAsset];
  [v2 setCustomKeyAsset:v3];
}

- (void)performAction:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__PXMakeKeyAssetAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __38__PXMakeKeyAssetAction_performAction___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) assetCollection];
  v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v4];
  v3 = [*(a1 + 32) redoKeyAsset];
  [v2 setCustomKeyAsset:v3];
}

- (PXMakeKeyAssetAction)initWithAssetCollection:(id)a3 keyAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 photoLibrary];
  v15.receiver = self;
  v15.super_class = PXMakeKeyAssetAction;
  v10 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_assetCollection, a3);
    objc_storeStrong(&v10->_redoKeyAsset, a4);
    v11 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v7 options:0];
    v12 = [v11 firstObject];
    undoKeyAsset = v10->_undoKeyAsset;
    v10->_undoKeyAsset = v12;
  }

  return v10;
}

@end