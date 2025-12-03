@interface PXUpdateCollectionListOrderAction
+ (BOOL)canPerformOnCollection:(id)collection;
- (BOOL)_canPerformUndo;
- (PXUpdateCollectionListOrderAction)initWithCollectionList:(id)list orderedCollections:(id)collections;
- (id)standardFetchOptions;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXUpdateCollectionListOrderAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
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
    [(PXPhotosAction *)self performChanges:v9 completionHandler:undoCopy];

    undoCopy = v7;
  }

  else
  {
    (*&undoCopy->super.super._propertyHintLock._os_unfair_lock_opaque)(undoCopy, 0, 0);
  }
}

void __49__PXUpdateCollectionListOrderAction_performUndo___block_invoke(uint64_t a1)
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
  standardFetchOptions = [(PXUpdateCollectionListOrderAction *)self standardFetchOptions];
  v7 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v5 options:standardFetchOptions];
  beforeFetchResult = self->_beforeFetchResult;
  self->_beforeFetchResult = v7;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__PXUpdateCollectionListOrderAction_performAction___block_invoke;
  v16[3] = &unk_1E774C620;
  v17 = v5;
  selfCopy = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PXUpdateCollectionListOrderAction_performAction___block_invoke_2;
  v12[3] = &unk_1E774AD10;
  v12[4] = self;
  v13 = v17;
  v14 = standardFetchOptions;
  v15 = actionCopy;
  v9 = actionCopy;
  v10 = standardFetchOptions;
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
  standardFetchOptions = [(PXPhotosAction *)&v5 standardFetchOptions];
  [standardFetchOptions setIncludeUserSmartAlbums:1];
  4000 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d OR kind = %d OR kind = %d", 2, 1507, 4000];
  [standardFetchOptions setInternalPredicate:4000];

  return standardFetchOptions;
}

- (BOOL)_canPerformUndo
{
  standardFetchOptions = [(PXUpdateCollectionListOrderAction *)self standardFetchOptions];
  v4 = [MEMORY[0x1E6978760] fetchCollectionsInCollectionList:self->_collectionList options:standardFetchOptions];
  fetchedObjectIDs = [v4 fetchedObjectIDs];
  fetchedObjectIDs2 = [(PHFetchResult *)self->_afterFetchResult fetchedObjectIDs];
  v7 = [fetchedObjectIDs isEqualToArray:fetchedObjectIDs2];

  return v7;
}

- (PXUpdateCollectionListOrderAction)initWithCollectionList:(id)list orderedCollections:(id)collections
{
  listCopy = list;
  collectionsCopy = collections;
  photoLibrary = [listCopy photoLibrary];
  v14.receiver = self;
  v14.super_class = PXUpdateCollectionListOrderAction;
  v10 = [(PXPhotosAction *)&v14 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_collectionList, list);
    v11 = [collectionsCopy copy];
    orderedCollections = v10->_orderedCollections;
    v10->_orderedCollections = v11;
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