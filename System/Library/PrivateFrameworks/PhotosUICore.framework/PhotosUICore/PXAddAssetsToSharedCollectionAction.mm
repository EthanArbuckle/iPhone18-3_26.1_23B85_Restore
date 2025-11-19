@interface PXAddAssetsToSharedCollectionAction
- (void)_addAssets:(id)a3 completionHandler:(id)a4;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXAddAssetsToSharedCollectionAction

- (void)performRedo:(id)a3
{
  v4 = a3;
  v5 = [(PXAddAssetsToAssetCollectionAction *)self addedAssets];
  [(PXAddAssetsToSharedCollectionAction *)self _addAssets:v5 completionHandler:v4];
}

- (void)performUndo:(id)a3
{
  v4 = MEMORY[0x1E69786A0];
  v5 = a3;
  v9 = objc_alloc_init(v4);
  [v9 setExpungeSource:4];
  v6 = MEMORY[0x1E6978648];
  v7 = [(PXAddAssetsToAssetCollectionAction *)self addedAssets];
  v8 = [(PXPhotosAction *)self photoLibrary];
  [v6 performBatchExpungeWithAssets:v7 deleteOptions:v9 photoLibrary:v8 completionHandler:v5];
}

- (void)_addAssets:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXAddAssetsToAssetCollectionAction *)self assetCollection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PXAddAssetsToSharedCollectionAction__addAssets_completionHandler___block_invoke;
  v11[3] = &unk_1E774ACE8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [PXSharedCollectionsUtilities addAssetsTo:v8 assets:v10 comment:0 completionHandler:v11];
}

void __68__PXAddAssetsToSharedCollectionAction__addAssets_completionHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = a3;
  [v5 setAddedAssets:v4];
  (*(a1[6] + 16))();
}

@end