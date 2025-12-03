@interface PXRearrangeCollectionListAction
+ (BOOL)canPerformOnCollection:(id)collection;
- (BOOL)_canPerformUndo;
- (PXRearrangeCollectionListAction)initWithCollectionList:(id)list movedCollections:(id)collections targetCollection:(id)collection;
- (id)standardFetchOptions;
- (int64_t)adjustedTargetIndexForFetchResult:(id)result movedAssets:(id)assets targetAsset:(id)asset;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXRearrangeCollectionListAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  if ([(PXRearrangeCollectionListAction *)self _canPerformUndo])
  {
    v5 = self->_collectionList;
    v6 = self->_beforeFetchResult;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__PXRearrangeCollectionListAction_performUndo___block_invoke;
    v9[3] = &unk_1E774C620;
    v10 = v6;
    v11 = v5;
    v7 = v5;
    v8 = v6;
    [(PXPhotosAction *)self performChanges:v9 completionHandler:undoCopy];

    undoCopy = v7;
  }

  else
  {
    (*&undoCopy->super.super._propertyHintLock._os_unfair_lock_opaque)(undoCopy, 0, 0);
  }
}

void __47__PXRearrangeCollectionListAction_performUndo___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(*(a1 + 32), "count")}];
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 40)];
  [v2 removeChildCollections:*(a1 + 32)];
  [v2 insertChildCollections:*(a1 + 32) atIndexes:v3];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v5 = self->_collectionList;
  v6 = self->_movedCollections;
  v7 = self->_targetCollection;
  standardFetchOptions = [(PXRearrangeCollectionListAction *)self standardFetchOptions];
  v9 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v5 options:standardFetchOptions];
  beforeFetchResult = self->_beforeFetchResult;
  self->_beforeFetchResult = v9;

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__PXRearrangeCollectionListAction_performAction___block_invoke;
  v20[3] = &unk_1E7744F50;
  v20[4] = self;
  v21 = v6;
  v22 = v7;
  v23 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__PXRearrangeCollectionListAction_performAction___block_invoke_2;
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

void __49__PXRearrangeCollectionListAction_performAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) adjustedTargetIndexForFetchResult:*(*(a1 + 32) + 88) movedAssets:*(a1 + 40) targetAsset:*(a1 + 48)];
  v4 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v2, objc_msgSend(*(a1 + 40), "count")}];
  v3 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 56) childCollections:*(*(a1 + 32) + 88)];
  [v3 removeChildCollections:*(a1 + 40)];
  [v3 insertChildCollections:*(a1 + 40) atIndexes:v4];
}

void __49__PXRearrangeCollectionListAction_performAction___block_invoke_2(void *a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:a1[5] options:a1[6]];
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

- (id)standardFetchOptions
{
  v4.receiver = self;
  v4.super_class = PXRearrangeCollectionListAction;
  standardFetchOptions = [(PXPhotosAction *)&v4 standardFetchOptions];
  [standardFetchOptions setIncludeUserSmartAlbums:1];

  return standardFetchOptions;
}

- (BOOL)_canPerformUndo
{
  standardFetchOptions = [(PXRearrangeCollectionListAction *)self standardFetchOptions];
  v4 = [MEMORY[0x1E6978760] fetchCollectionsInCollectionList:self->_collectionList options:standardFetchOptions];
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

- (PXRearrangeCollectionListAction)initWithCollectionList:(id)list movedCollections:(id)collections targetCollection:(id)collection
{
  listCopy = list;
  collectionsCopy = collections;
  collectionCopy = collection;
  photoLibrary = [listCopy photoLibrary];
  v15.receiver = self;
  v15.super_class = PXRearrangeCollectionListAction;
  v13 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:photoLibrary];

  if (v13)
  {
    objc_storeStrong(&v13->_collectionList, list);
    objc_storeStrong(&v13->_movedCollections, collections);
    objc_storeStrong(&v13->_targetCollection, collection);
  }

  return v13;
}

+ (BOOL)canPerformOnCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy canContainCollections])
  {
    v4 = [collectionCopy canPerformEditOperation:5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end