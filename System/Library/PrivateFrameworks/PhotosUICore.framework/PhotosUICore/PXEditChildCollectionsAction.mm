@interface PXEditChildCollectionsAction
- (PXEditChildCollectionsAction)initWithCollectionList:(id)list childCollections:(id)collections;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXEditChildCollectionsAction

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXEditChildCollectionsAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
}

void __44__PXEditChildCollectionsAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionsToAddUndoContext];
  [v2 enumerateCollectionListsUsingBlock:&__block_literal_global_57556];

  v3 = [*(a1 + 32) collectionsToRemove];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E6978768];
    v6 = [*(a1 + 32) collectionList];
    v7 = [*(a1 + 32) collectionListUndoFetchResult];
    v10 = [v5 changeRequestForCollectionList:v6 childCollections:v7];

    v8 = [*(a1 + 32) collectionsToRemove];
    v9 = [*(a1 + 32) collectionsToRemoveUndoIndexes];
    [v10 insertChildCollections:v8 atIndexes:v9];
  }
}

void __44__PXEditChildCollectionsAction_performUndo___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = MEMORY[0x1E6978768];
  v9 = a5;
  v10 = a4;
  v11 = [v8 changeRequestForCollectionList:a2 childCollections:a3];
  [v11 insertChildCollections:v9 atIndexes:v10];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PXEditChildCollectionsAction_performAction___block_invoke;
  v8[3] = &unk_1E774C648;
  v8[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXEditChildCollectionsAction_performAction___block_invoke_2;
  v6[3] = &unk_1E774BD88;
  v6[4] = self;
  v7 = actionCopy;
  v5 = actionCopy;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:v6];
}

void __46__PXEditChildCollectionsAction_performAction___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978768];
  v3 = [*(a1 + 32) collectionList];
  v6 = [v2 changeRequestForCollectionList:v3];

  v4 = [*(a1 + 32) collectionsToRemove];
  [v6 removeChildCollections:v4];

  v5 = [*(a1 + 32) collectionsToAdd];
  [v6 addChildCollections:v5];
}

void __46__PXEditChildCollectionsAction_performAction___block_invoke_2(uint64_t a1, int a2)
{
  (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v4 = [*(a1 + 32) collectionsToAddUndoContext];
    [v4 storeOriginalParentCollectionListFetchResults];

    v6 = [*(a1 + 32) collectionList];
    v5 = fetchCollectionsInCollectionList(v6);
    [*(a1 + 32) setCollectionListUndoFetchResult:v5];
  }
}

- (PXEditChildCollectionsAction)initWithCollectionList:(id)list childCollections:(id)collections
{
  v14 = *MEMORY[0x1E69E9840];
  listCopy = list;
  collectionsCopy = collections;
  v7 = fetchCollectionsInCollectionList(listCopy);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __72__PXEditChildCollectionsAction_initWithCollectionList_childCollections___block_invoke;
  v12 = &unk_1E7733490;
  v13 = v7;
  PXFilter();
}

@end