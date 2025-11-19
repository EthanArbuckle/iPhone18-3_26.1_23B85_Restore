@interface PXMoveToCollectionListAction
+ (BOOL)canPerformOnCollection:(id)a3;
- (PXMoveToCollectionListAction)initWithCollections:(id)a3 targetCollectionList:(id)a4;
- (int64_t)adjustedTargetIndexForFetchResult:(id)a3 movedAssets:(id)a4 targetAsset:(id)a5;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXMoveToCollectionListAction

- (void)performUndo:(id)a3
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
  [(PXPhotosAction *)self performChanges:v9 completionHandler:a3];
}

void __44__PXMoveToCollectionListAction_performUndo___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(*(a1 + 32), "count")}];
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 40)];
  [v2 insertChildCollections:*(a1 + 32) atIndexes:v3];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = self->_sourceCollectionList;
  v6 = self->_targetCollectionList;
  v7 = self->_movedCollections;
  v8 = [(PXPhotosAction *)self standardFetchOptions];
  v9 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v5 options:v8];
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
  v18 = v8;
  v19 = v4;
  v11 = v4;
  v12 = v8;
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

- (int64_t)adjustedTargetIndexForFetchResult:(id)a3 movedAssets:(id)a4 targetAsset:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    v10 = [v8 indexOfObject:a5];
  }

  else
  {
    v10 = [v8 count];
  }

  v11 = [PXDragAndDropUtilities adjustedTargetIndexForCollection:v9 movedObjects:v7 targetIndex:v10];

  return v11;
}

- (PXMoveToCollectionListAction)initWithCollections:(id)a3 targetCollectionList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 photoLibrary];
  v15.receiver = self;
  v15.super_class = PXMoveToCollectionListAction;
  v10 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_movedCollections, a3);
    v11 = [v7 firstObject];
    v12 = [v11 px_fetchContainer];
    sourceCollectionList = v10->_sourceCollectionList;
    v10->_sourceCollectionList = v12;

    objc_storeStrong(&v10->_targetCollectionList, a4);
  }

  return v10;
}

+ (BOOL)canPerformOnCollection:(id)a3
{
  v3 = a3;
  if ([v3 canContainCollections])
  {
    v4 = [v3 canPerformEditOperation:5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end