@interface PXRearrangeAssetCollectionAction
- (BOOL)_canPerformUndo;
- (PXRearrangeAssetCollectionAction)initWithAssetCollection:(id)collection movedAssets:(id)assets targetAsset:(id)asset;
- (int64_t)adjustedTargetIndexForFetchResult:(id)result movedAssets:(id)assets targetAsset:(id)asset;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXRearrangeAssetCollectionAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  if ([(PXRearrangeAssetCollectionAction *)self _canPerformUndo])
  {
    v5 = self->_assetCollection;
    v6 = self->_beforeFetchResult;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__PXRearrangeAssetCollectionAction_performUndo___block_invoke;
    v9[3] = &unk_1E774C620;
    v10 = v5;
    v11 = v6;
    v7 = v6;
    v8 = v5;
    [(PXPhotosAction *)self performChanges:v9 completionHandler:undoCopy];

    undoCopy = v8;
  }

  else
  {
    (*&undoCopy->super.super._propertyHintLock._os_unfair_lock_opaque)(undoCopy, 0, 0);
  }
}

void __48__PXRearrangeAssetCollectionAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:*(a1 + 32)];
  [v2 removeAssets:*(a1 + 40)];
  [v2 addAssets:*(a1 + 40)];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v5 = self->_assetCollection;
  v6 = self->_movedAssets;
  v7 = self->_targetAsset;
  standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
  v9 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:standardFetchOptions];
  beforeFetchResult = self->_beforeFetchResult;
  self->_beforeFetchResult = v9;

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__PXRearrangeAssetCollectionAction_performAction___block_invoke;
  v20[3] = &unk_1E7744F50;
  v20[4] = self;
  v21 = v6;
  v22 = v7;
  v23 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__PXRearrangeAssetCollectionAction_performAction___block_invoke_2;
  v16[3] = &unk_1E774AD10;
  v16[4] = self;
  v17 = v23;
  v18 = standardFetchOptions;
  v19 = actionCopy;
  v11 = actionCopy;
  v12 = standardFetchOptions;
  v13 = v23;
  v14 = v7;
  v15 = v6;
  [(PXPhotosAction *)self performChanges:v20 completionHandler:v16];
}

void __50__PXRearrangeAssetCollectionAction_performAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) adjustedTargetIndexForFetchResult:*(*(a1 + 32) + 88) movedAssets:*(a1 + 40) targetAsset:*(a1 + 48)];
  v4 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v2, objc_msgSend(*(a1 + 40), "count")}];
  v3 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:*(a1 + 56)];
  [v3 removeAssets:*(a1 + 40)];
  [v3 insertAssets:*(a1 + 40) atIndexes:v4];
}

void __50__PXRearrangeAssetCollectionAction_performAction___block_invoke_2(void *a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:a1[5] options:a1[6]];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((a1[4] + 96), v5);
  if (a2)
  {
  }

  (*(a1[7] + 16))();
}

- (BOOL)_canPerformUndo
{
  standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
  v4 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self->_assetCollection options:standardFetchOptions];
  fetchedObjectIDs = [v4 fetchedObjectIDs];
  fetchedObjectIDs2 = [(PHFetchResult *)self->_afterFetchResult fetchedObjectIDs];
  v7 = [fetchedObjectIDs isEqualToArray:fetchedObjectIDs2];

  return v7;
}

- (int64_t)adjustedTargetIndexForFetchResult:(id)result movedAssets:(id)assets targetAsset:(id)asset
{
  assetsCopy = assets;
  resultCopy = result;
  v9 = resultCopy;
  if (asset)
  {
    v10 = [resultCopy indexOfObject:asset];
  }

  else
  {
    v10 = [resultCopy count];
  }

  v11 = [PXDragAndDropUtilities adjustedTargetIndexForCollection:v9 movedObjects:assetsCopy targetIndex:v10];

  return v11;
}

- (PXRearrangeAssetCollectionAction)initWithAssetCollection:(id)collection movedAssets:(id)assets targetAsset:(id)asset
{
  collectionCopy = collection;
  assetsCopy = assets;
  assetCopy = asset;
  photoLibrary = [collectionCopy photoLibrary];
  v15.receiver = self;
  v15.super_class = PXRearrangeAssetCollectionAction;
  v13 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:photoLibrary];

  if (v13)
  {
    objc_storeStrong(&v13->_assetCollection, collection);
    objc_storeStrong(&v13->_movedAssets, assets);
    objc_storeStrong(&v13->_targetAsset, asset);
  }

  return v13;
}

@end