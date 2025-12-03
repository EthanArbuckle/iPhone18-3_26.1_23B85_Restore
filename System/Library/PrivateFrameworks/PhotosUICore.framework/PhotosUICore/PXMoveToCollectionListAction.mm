@interface PXMoveToCollectionListAction
+ (BOOL)canPerformOnCollection:(id)collection;
- (PXMoveToCollectionListAction)initWithCollections:(id)collections targetCollectionList:(id)list;
- (int64_t)adjustedTargetIndexForFetchResult:(id)result movedAssets:(id)assets targetAsset:(id)asset;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXMoveToCollectionListAction

- (void)performUndo:(id)undo
{
  v5 = self->_sourceCollectionList;
  v6 = self->_beforeFetchResult;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PXMoveToCollectionListAction_performUndo___block_invoke;
  v9[3] = &unk_1E774C620;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  [(PXPhotosAction *)self performChanges:v9 completionHandler:undo];
}

void __44__PXMoveToCollectionListAction_performUndo___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(*(a1 + 32), "count")}];
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 40)];
  [v2 insertChildCollections:*(a1 + 32) atIndexes:v3];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v5 = self->_sourceCollectionList;
  v6 = self->_targetCollectionList;
  v7 = self->_movedCollections;
  standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
  v9 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v5 options:standardFetchOptions];
  beforeFetchResult = self->_beforeFetchResult;
  self->_beforeFetchResult = v9;

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__PXMoveToCollectionListAction_performAction___block_invoke;
  v20[3] = &unk_1E774C620;
  v21 = v6;
  v22 = v7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__PXMoveToCollectionListAction_performAction___block_invoke_2;
  v16[3] = &unk_1E774AD10;
  v16[4] = self;
  v17 = v5;
  v18 = standardFetchOptions;
  v19 = actionCopy;
  v11 = actionCopy;
  v12 = standardFetchOptions;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  [(PXPhotosAction *)self performChanges:v20 completionHandler:v16];
}

void __46__PXMoveToCollectionListAction_performAction___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(v2, "count")}];
  [v4 insertChildCollections:v2 atIndexes:v3];
}

void __46__PXMoveToCollectionListAction_performAction___block_invoke_2(void *a1, int a2, void *a3)
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

  objc_storeStrong((a1[4] + 104), v5);
  if (a2)
  {
  }

  (*(a1[7] + 16))();
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

- (PXMoveToCollectionListAction)initWithCollections:(id)collections targetCollectionList:(id)list
{
  collectionsCopy = collections;
  listCopy = list;
  photoLibrary = [listCopy photoLibrary];
  v15.receiver = self;
  v15.super_class = PXMoveToCollectionListAction;
  v10 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_movedCollections, collections);
    firstObject = [collectionsCopy firstObject];
    px_fetchContainer = [firstObject px_fetchContainer];
    sourceCollectionList = v10->_sourceCollectionList;
    v10->_sourceCollectionList = px_fetchContainer;

    objc_storeStrong(&v10->_targetCollectionList, list);
  }

  return v10;
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