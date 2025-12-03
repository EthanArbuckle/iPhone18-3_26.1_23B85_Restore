@interface PXAddAssetsToSharedCollectionAction
- (void)_addAssets:(id)assets completionHandler:(id)handler;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXAddAssetsToSharedCollectionAction

- (void)performRedo:(id)redo
{
  redoCopy = redo;
  addedAssets = [(PXAddAssetsToAssetCollectionAction *)self addedAssets];
  [(PXAddAssetsToSharedCollectionAction *)self _addAssets:addedAssets completionHandler:redoCopy];
}

- (void)performUndo:(id)undo
{
  v4 = MEMORY[0x1E69786A0];
  undoCopy = undo;
  v9 = objc_alloc_init(v4);
  [v9 setExpungeSource:4];
  v6 = MEMORY[0x1E6978648];
  addedAssets = [(PXAddAssetsToAssetCollectionAction *)self addedAssets];
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  [v6 performBatchExpungeWithAssets:addedAssets deleteOptions:v9 photoLibrary:photoLibrary completionHandler:undoCopy];
}

- (void)_addAssets:(id)assets completionHandler:(id)handler
{
  assetsCopy = assets;
  handlerCopy = handler;
  assetCollection = [(PXAddAssetsToAssetCollectionAction *)self assetCollection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PXAddAssetsToSharedCollectionAction__addAssets_completionHandler___block_invoke;
  v11[3] = &unk_1E774ACE8;
  v11[4] = self;
  v12 = assetsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = assetsCopy;
  [PXSharedCollectionsUtilities addAssetsTo:assetCollection assets:v10 comment:0 completionHandler:v11];
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