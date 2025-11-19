@interface PXCreateCollectionListAction
- (PHCollectionList)createdCollectionList;
- (PXCreateCollectionListAction)initWithTitle:(id)a3 parentCollectionList:(id)a4 childCollections:(id)a5;
- (void)performAction:(id)a3;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXCreateCollectionListAction

- (void)performRedo:(id)a3
{
  v4 = a3;
  v5 = [(PXCreateCollectionListAction *)self createdCollectionList];
  if (v5)
  {
    v6 = [(PXCreateCollectionListAction *)self childCollections];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__PXCreateCollectionListAction_performRedo___block_invoke;
    v12[3] = &unk_1E774C648;
    v13 = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PXCreateCollectionListAction_performRedo___block_invoke_2;
    v8[3] = &unk_1E774AD10;
    v8[4] = self;
    v9 = v13;
    v10 = v6;
    v11 = v4;
    v7 = v6;
    [(PXPhotosAction *)self performChanges:v12 completionHandler:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
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

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXCreateCollectionListAction *)self createdCollectionList];
  if (v5)
  {
    v6 = [(PXCreateCollectionListAction *)self childCollections];
    v7 = [(PXCreateCollectionListAction *)self undoContext];

    if (v7)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__PXCreateCollectionListAction_performUndo___block_invoke;
      v15[3] = &unk_1E774A1B8;
      v8 = &v16;
      v9 = v5;
      v16 = v9;
      v17 = v6;
      v18 = self;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__PXCreateCollectionListAction_performUndo___block_invoke_3;
      v12[3] = &unk_1E774ACE8;
      v12[4] = self;
      v13 = v9;
      v14 = v4;
      [(PXPhotosAction *)self performChanges:v15 completionHandler:v12];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__PXCreateCollectionListAction_performUndo___block_invoke_5;
      v10[3] = &unk_1E774C648;
      v8 = &v11;
      v11 = v5;
      [(PXPhotosAction *)self performChanges:v10 completionHandler:v4];
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
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

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXCreateCollectionListAction *)self childCollections];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PXCreateCollectionListAction_performAction___block_invoke;
  v10[3] = &unk_1E774C620;
  v10[4] = self;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PXCreateCollectionListAction_performAction___block_invoke_2;
  v8[3] = &unk_1E774BD88;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = v5;
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
  v3 = [(PXCreateCollectionListAction *)self createdCollectionIdentifier];
  v4 = v3;
  createdCollectionList = self->_createdCollectionList;
  if (createdCollectionList)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = MEMORY[0x1E6978760];
    v15[0] = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [(PXPhotosAction *)self standardFetchOptions];
    v10 = [v7 fetchCollectionListsWithLocalIdentifiers:v8 options:v9];
    v11 = [v10 firstObject];
    v12 = self->_createdCollectionList;
    self->_createdCollectionList = v11;

    createdCollectionList = self->_createdCollectionList;
  }

  v13 = createdCollectionList;

  return createdCollectionList;
}

- (PXCreateCollectionListAction)initWithTitle:(id)a3 parentCollectionList:(id)a4 childCollections:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 photoLibrary];
  v18.receiver = self;
  v18.super_class = PXCreateCollectionListAction;
  v12 = [(PXPhotosAction *)&v18 initWithPhotoLibrary:v11];

  if (v12)
  {
    v13 = [v8 copy];
    title = v12->_title;
    v12->_title = v13;

    objc_storeStrong(&v12->_parentCollectionList, a4);
    v12->_indexInParentCollectionList = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [v10 copy];
    childCollections = v12->_childCollections;
    v12->_childCollections = v15;
  }

  return v12;
}

@end