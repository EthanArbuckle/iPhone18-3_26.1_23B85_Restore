@interface PXCreateCollectionListAction
- (PHCollectionList)createdCollectionList;
- (PXCreateCollectionListAction)initWithTitle:(id)title parentCollectionList:(id)list childCollections:(id)collections;
- (void)performAction:(id)action;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXCreateCollectionListAction

- (void)performRedo:(id)redo
{
  redoCopy = redo;
  createdCollectionList = [(PXCreateCollectionListAction *)self createdCollectionList];
  if (createdCollectionList)
  {
    childCollections = [(PXCreateCollectionListAction *)self childCollections];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__PXCreateCollectionListAction_performRedo___block_invoke;
    v12[3] = &unk_1E774C648;
    v13 = createdCollectionList;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PXCreateCollectionListAction_performRedo___block_invoke_2;
    v8[3] = &unk_1E774AD10;
    v8[4] = self;
    v9 = v13;
    v10 = childCollections;
    v11 = redoCopy;
    v7 = childCollections;
    [(PXPhotosAction *)self performChanges:v12 completionHandler:v8];
  }

  else
  {
    (*(redoCopy + 2))(redoCopy, 0, 0);
  }
}

void __44__PXCreateCollectionListAction_performRedo___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978768];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 undeleteCollectionLists:v2];
}

void __44__PXCreateCollectionListAction_performRedo___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 && ([*(a1 + 32) undoContext], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PXCreateCollectionListAction_performRedo___block_invoke_3;
    v8[3] = &unk_1E774C620;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v7 performChanges:v8 completionHandler:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __44__PXCreateCollectionListAction_performRedo___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 32)];
  [v2 addChildCollections:*(a1 + 40)];
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  createdCollectionList = [(PXCreateCollectionListAction *)self createdCollectionList];
  if (createdCollectionList)
  {
    childCollections = [(PXCreateCollectionListAction *)self childCollections];
    undoContext = [(PXCreateCollectionListAction *)self undoContext];

    if (undoContext)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__PXCreateCollectionListAction_performUndo___block_invoke;
      v15[3] = &unk_1E774A1B8;
      v8 = &v16;
      v9 = createdCollectionList;
      v16 = v9;
      v17 = childCollections;
      selfCopy = self;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__PXCreateCollectionListAction_performUndo___block_invoke_3;
      v12[3] = &unk_1E774ACE8;
      v12[4] = self;
      v13 = v9;
      v14 = undoCopy;
      [(PXPhotosAction *)self performChanges:v15 completionHandler:v12];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__PXCreateCollectionListAction_performUndo___block_invoke_5;
      v10[3] = &unk_1E774C648;
      v8 = &v11;
      v11 = createdCollectionList;
      [(PXPhotosAction *)self performChanges:v10 completionHandler:undoCopy];
    }
  }

  else
  {
    (*(undoCopy + 2))(undoCopy, 0, 0);
  }
}

void __44__PXCreateCollectionListAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 32)];
  [v2 removeChildCollections:*(a1 + 40)];

  v3 = [*(a1 + 48) undoContext];
  [v3 enumerateCollectionListsUsingBlock:&__block_literal_global_48388];
}

void __44__PXCreateCollectionListAction_performUndo___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PXCreateCollectionListAction_performUndo___block_invoke_4;
    v5[3] = &unk_1E774C648;
    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 performChanges:v5 completionHandler:*(a1 + 48)];
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void __44__PXCreateCollectionListAction_performUndo___block_invoke_5(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978768];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 deleteCollectionLists:v2];
}

void __44__PXCreateCollectionListAction_performUndo___block_invoke_4(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978768];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 deleteCollectionLists:v2];
}

void __44__PXCreateCollectionListAction_performUndo___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
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
  childCollections = [(PXCreateCollectionListAction *)self childCollections];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PXCreateCollectionListAction_performAction___block_invoke;
  v10[3] = &unk_1E774C620;
  v10[4] = self;
  v11 = childCollections;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PXCreateCollectionListAction_performAction___block_invoke_2;
  v8[3] = &unk_1E774BD88;
  v8[4] = self;
  v9 = actionCopy;
  v6 = actionCopy;
  v7 = childCollections;
  [(PXPhotosAction *)self performChanges:v10 completionHandler:v8];
}

void __46__PXCreateCollectionListAction_performAction___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978768];
  v3 = [*(a1 + 32) title];
  v4 = [v2 creationRequestForCollectionListWithTitle:v3];

  if ([*(a1 + 40) count])
  {
    v5 = [[PXMovingCollectionsUndoContext alloc] initWithCollections:*(a1 + 40)];
    [*(a1 + 32) setUndoContext:v5];

    [v4 addChildCollections:*(a1 + 40)];
  }

  v6 = [v4 placeholderForCreatedCollectionList];
  v7 = [v6 localIdentifier];
  [*(a1 + 32) setCreatedCollectionIdentifier:v7];

  v8 = [*(a1 + 32) indexInParentCollectionList];
  v9 = *(a1 + 32);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v9 parentCollectionList];
    v11 = [PXPhotoKitCollectionsDataSourceManager standardDataSourceManagerForCollectionList:v10];

    v12 = [v11 collectionsFetchResult];
    v13 = [v11 indexOfFirstReorderableCollection];
    v14 = MEMORY[0x1E6978768];
    v15 = [*(a1 + 32) parentCollectionList];
    v16 = [v14 changeRequestForCollectionList:v15 childCollections:v12];

    v22[0] = v6;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:v13];
    [v16 insertChildCollections:v17 atIndexes:v18];
  }

  else
  {
    v19 = MEMORY[0x1E6978768];
    v20 = [v9 parentCollectionList];
    v11 = [v19 changeRequestForCollectionList:v20];

    v21 = v6;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:v8];
    [v11 insertChildCollections:v12 atIndexes:v16];
  }
}

void __46__PXCreateCollectionListAction_performAction___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = [*(a1 + 32) undoContext];
    [v5 storeOriginalParentCollectionListFetchResults];
  }

  (*(*(a1 + 40) + 16))();
}

- (PHCollectionList)createdCollectionList
{
  v15[1] = *MEMORY[0x1E69E9840];
  createdCollectionIdentifier = [(PXCreateCollectionListAction *)self createdCollectionIdentifier];
  v4 = createdCollectionIdentifier;
  createdCollectionList = self->_createdCollectionList;
  if (createdCollectionList)
  {
    v6 = 1;
  }

  else
  {
    v6 = createdCollectionIdentifier == 0;
  }

  if (!v6)
  {
    v7 = MEMORY[0x1E6978760];
    v15[0] = createdCollectionIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
    v10 = [v7 fetchCollectionListsWithLocalIdentifiers:v8 options:standardFetchOptions];
    firstObject = [v10 firstObject];
    v12 = self->_createdCollectionList;
    self->_createdCollectionList = firstObject;

    createdCollectionList = self->_createdCollectionList;
  }

  v13 = createdCollectionList;

  return createdCollectionList;
}

- (PXCreateCollectionListAction)initWithTitle:(id)title parentCollectionList:(id)list childCollections:(id)collections
{
  titleCopy = title;
  listCopy = list;
  collectionsCopy = collections;
  photoLibrary = [listCopy photoLibrary];
  v18.receiver = self;
  v18.super_class = PXCreateCollectionListAction;
  v12 = [(PXPhotosAction *)&v18 initWithPhotoLibrary:photoLibrary];

  if (v12)
  {
    v13 = [titleCopy copy];
    title = v12->_title;
    v12->_title = v13;

    objc_storeStrong(&v12->_parentCollectionList, list);
    v12->_indexInParentCollectionList = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [collectionsCopy copy];
    childCollections = v12->_childCollections;
    v12->_childCollections = v15;
  }

  return v12;
}

@end