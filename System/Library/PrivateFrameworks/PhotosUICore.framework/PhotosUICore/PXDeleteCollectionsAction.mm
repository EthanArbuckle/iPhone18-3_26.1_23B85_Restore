@interface PXDeleteCollectionsAction
- (PXDeleteCollectionsAction)initWithCollection:(id)collection;
- (PXDeleteCollectionsAction)initWithCollections:(id)collections;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)action;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXDeleteCollectionsAction

- (void)performRedo:(id)redo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__PXDeleteCollectionsAction_performRedo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:redo];
}

uint64_t __41__PXDeleteCollectionsAction_performRedo___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6978660] deleteAssetCollections:*(*(a1 + 32) + 88)];
  v2 = MEMORY[0x1E6978768];
  v3 = *(*(a1 + 32) + 104);

  return [v2 deleteCollectionLists:v3];
}

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__PXDeleteCollectionsAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
}

uint64_t __41__PXDeleteCollectionsAction_performUndo___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6978660] undeleteAssetCollections:*(*(a1 + 32) + 88)];
  v2 = MEMORY[0x1E6978768];
  v3 = *(*(a1 + 32) + 104);

  return [v2 undeleteCollectionLists:v3];
}

- (void)performAction:(id)action
{
  v33 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  collections = [(PXDeleteCollectionsAction *)self collections];
  v8 = [collections countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(collections);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([v12 canPerformEditOperation:6])
        {
          if ([v12 canContainAssets])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = array2;
            }

            else
            {
              v13 = array;
            }
          }

          else
          {
            canContainCollections = [v12 canContainCollections];
            v13 = array3;
            if (!canContainCollections)
            {
              continue;
            }
          }

          [v13 addObject:v12];
        }
      }

      v9 = [collections countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v15 = [array copy];
  assetCollections = self->_assetCollections;
  self->_assetCollections = v15;

  v17 = [array3 copy];
  collectionLists = self->_collectionLists;
  self->_collectionLists = v17;

  if ([array count] || objc_msgSend(array3, "count"))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __43__PXDeleteCollectionsAction_performAction___block_invoke;
    v25[3] = &unk_1E774C620;
    v26 = array;
    v27 = array3;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __43__PXDeleteCollectionsAction_performAction___block_invoke_2;
    v22[3] = &unk_1E774BD88;
    v23 = array2;
    v19 = actionCopy;
    v24 = actionCopy;
    [(PXPhotosAction *)self performChanges:v25 completionHandler:v22];
  }

  else
  {
    v19 = actionCopy;
    if ([array2 count])
    {
      [PXSharedCollectionsUtilities deleteAlbums:array2 completionHandler:actionCopy];
    }

    else if (actionCopy)
    {
      v20 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Nothing to delete, or that can be deleted"}];
      (*(actionCopy + 2))(actionCopy, 0, v20);
    }
  }
}

uint64_t __43__PXDeleteCollectionsAction_performAction___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6978660] deleteAssetCollections:*(a1 + 32)];
  v2 = MEMORY[0x1E6978768];
  v3 = *(a1 + 40);

  return [v2 deleteCollectionLists:v3];
}

void __43__PXDeleteCollectionsAction_performAction___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2 && [*(a1 + 32) count])
  {
    [PXSharedCollectionsUtilities deleteAlbums:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, a2, v6);
    }
  }
}

- (id)actionNameLocalizationKey
{
  collections = [(PXDeleteCollectionsAction *)self collections];
  if ([collections count] == 1)
  {
    firstObject = [collections firstObject];
    v4 = firstObject;
    v5 = @"PXDeleteActionName";
    if (firstObject)
    {
      if ([firstObject canContainAssets])
      {
        v5 = @"PXDeleteAlbumActionName";
      }

      else if ([v4 canContainCollections])
      {
        v5 = @"PXDeleteFolderActionName";
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = @"PXDeleteActionName";
  }

  return v5;
}

- (PXDeleteCollectionsAction)initWithCollection:(id)collection
{
  v10 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v4 = MEMORY[0x1E695DEC8];
  collectionCopy2 = collection;
  v6 = [v4 arrayWithObjects:&collectionCopy count:1];

  v7 = [(PXDeleteCollectionsAction *)self initWithCollections:v6, collectionCopy, v10];
  return v7;
}

- (PXDeleteCollectionsAction)initWithCollections:(id)collections
{
  collectionsCopy = collections;
  firstObject = [collectionsCopy firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    photoLibrary = [firstObject photoLibrary];
    v13.receiver = self;
    v13.super_class = PXDeleteCollectionsAction;
    v8 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:photoLibrary];

    if (v8)
    {
      v9 = [collectionsCopy copy];
      collections = v8->_collections;
      v8->_collections = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end