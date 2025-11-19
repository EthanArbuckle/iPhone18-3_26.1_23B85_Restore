@interface PXEditCollectionAssetsAction
- (PXEditCollectionAssetsAction)initWithAssetCollection:(id)a3 assets:(id)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXEditCollectionAssetsAction

- (void)performUndo:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXEditCollectionAssetsAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __44__PXEditCollectionAssetsAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978660];
  v3 = [*(a1 + 32) assetCollection];
  v4 = [*(a1 + 32) assetCollectionUndoFetchResult];
  v8 = [v2 changeRequestForAssetCollection:v3 assets:v4];

  v5 = [*(a1 + 32) assetsToAdd];
  [v8 removeAssets:v5];

  v6 = [*(a1 + 32) assetsToRemove];
  v7 = [*(a1 + 32) assetsToRemoveUndoIndexes];
  [v8 insertAssets:v6 atIndexes:v7];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PXEditCollectionAssetsAction_performAction___block_invoke;
  v8[3] = &unk_1E774C648;
  v8[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXEditCollectionAssetsAction_performAction___block_invoke_2;
  v6[3] = &unk_1E774BD88;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:v6];
}

void __46__PXEditCollectionAssetsAction_performAction___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978660];
  v3 = [*(a1 + 32) assetCollection];
  v6 = [v2 changeRequestForAssetCollection:v3];

  v4 = [*(a1 + 32) assetsToRemove];
  [v6 removeAssets:v4];

  v5 = [*(a1 + 32) assetsToAdd];
  [v6 addAssets:v5];
}

void __46__PXEditCollectionAssetsAction_performAction___block_invoke_2(uint64_t a1, int a2)
{
  (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = [*(a1 + 32) assetCollection];
    v4 = fetchAssetsInAssetCollection(v5);
    [*(a1 + 32) setAssetCollectionUndoFetchResult:v4];
  }
}

- (PXEditCollectionAssetsAction)initWithAssetCollection:(id)a3 assets:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = fetchAssetsInAssetCollection(v7);
  v10 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v9 toFetchResult:v8 changedObjects:MEMORY[0x1E695E0F0]];

  v11 = [v10 removedIndexes];
  v12 = [v11 count];
  v13 = [v10 insertedIndexes];
  v14 = [v13 count];

  if (v12 + v14)
  {
    v16 = [v7 photoLibrary];
    v25.receiver = self;
    v25.super_class = PXEditCollectionAssetsAction;
    v17 = [(PXPhotosAction *)&v25 initWithPhotoLibrary:v16];

    if (v17)
    {
      objc_storeStrong(&v17->_assetCollection, a3);
      v18 = [v10 insertedObjects];
      assetsToAdd = v17->_assetsToAdd;
      v17->_assetsToAdd = v18;

      v20 = [v10 removedObjects];
      assetsToRemove = v17->_assetsToRemove;
      v17->_assetsToRemove = v20;

      v22 = [v10 removedIndexes];
      assetsToRemoveUndoIndexes = v17->_assetsToRemoveUndoIndexes;
      v17->_assetsToRemoveUndoIndexes = v22;
    }

    self = v17;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end