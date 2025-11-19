@interface PXUpdateCollectionListOrderAction
+ (BOOL)canPerformOnCollection:(id)a3;
- (BOOL)_canPerformUndo;
- (PXUpdateCollectionListOrderAction)initWithCollectionList:(id)a3 orderedCollections:(id)a4;
- (id)standardFetchOptions;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXUpdateCollectionListOrderAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  if ([(PXUpdateCollectionListOrderAction *)self _canPerformUndo])
  {
    v5 = self->_collectionList;
    v6 = self->_beforeFetchResult;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__PXUpdateCollectionListOrderAction_performUndo___block_invoke;
    v9[3] = &unk_1E774C620;
    v10 = v6;
    v11 = v5;
    v7 = v5;
    v8 = v6;
    [(PXPhotosAction *)self performChanges:v9 completionHandler:v4];

    v4 = v7;
  }

  else
  {
    (*&v4->super.super._propertyHintLock._os_unfair_lock_opaque)(v4, 0, 0);
  }
}

void __49__PXUpdateCollectionListOrderAction_performUndo___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(*(a1 + 32), "count")}];
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 40)];
  [v2 removeChildCollections:*(a1 + 32)];
  [v2 insertChildCollections:*(a1 + 32) atIndexes:v3];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = self->_collectionList;
  v6 = [(PXUpdateCollectionListOrderAction *)self standardFetchOptions];
  v7 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v5 options:v6];
  beforeFetchResult = self->_beforeFetchResult;
  self->_beforeFetchResult = v7;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__PXUpdateCollectionListOrderAction_performAction___block_invoke;
  v16[3] = &unk_1E774C620;
  v17 = v5;
  v18 = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PXUpdateCollectionListOrderAction_performAction___block_invoke_2;
  v12[3] = &unk_1E774AD10;
  v12[4] = self;
  v13 = v17;
  v14 = v6;
  v15 = v4;
  v9 = v4;
  v10 = v6;
  v11 = v17;
  [(PXPhotosAction *)self performChanges:v16 completionHandler:v12];
}

void __51__PXUpdateCollectionListOrderAction_performAction___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 32) childCollections:*(*(a1 + 40) + 88)];
  [v2 removeChildCollections:*(*(a1 + 40) + 88)];
  [v2 addChildCollections:*(*(a1 + 40) + 112)];
}

void __51__PXUpdateCollectionListOrderAction_performAction___block_invoke_2(void *a1, int a2, void *a3)
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
  v5.receiver = self;
  v5.super_class = PXUpdateCollectionListOrderAction;
  v2 = [(PXPhotosAction *)&v5 standardFetchOptions];
  [v2 setIncludeUserSmartAlbums:1];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d OR kind = %d OR kind = %d", 2, 1507, 4000];
  [v2 setInternalPredicate:v3];

  return v2;
}

- (BOOL)_canPerformUndo
{
  v3 = [(PXUpdateCollectionListOrderAction *)self standardFetchOptions];
  v4 = [MEMORY[0x1E6978760] fetchCollectionsInCollectionList:self->_collectionList options:v3];
  v5 = [v4 fetchedObjectIDs];
  v6 = [(PHFetchResult *)self->_afterFetchResult fetchedObjectIDs];
  v7 = [v5 isEqualToArray:v6];

  return v7;
}

- (PXUpdateCollectionListOrderAction)initWithCollectionList:(id)a3 orderedCollections:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 photoLibrary];
  v14.receiver = self;
  v14.super_class = PXUpdateCollectionListOrderAction;
  v10 = [(PXPhotosAction *)&v14 initWithPhotoLibrary:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_collectionList, a3);
    v11 = [v8 copy];
    orderedCollections = v10->_orderedCollections;
    v10->_orderedCollections = v11;
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