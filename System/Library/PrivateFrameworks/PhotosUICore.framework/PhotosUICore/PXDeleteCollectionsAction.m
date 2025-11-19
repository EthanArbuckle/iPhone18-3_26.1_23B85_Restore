@interface PXDeleteCollectionsAction
- (PXDeleteCollectionsAction)initWithCollection:(id)a3;
- (PXDeleteCollectionsAction)initWithCollections:(id)a3;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)a3;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXDeleteCollectionsAction

- (void)performRedo:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__PXDeleteCollectionsAction_performRedo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

uint64_t __41__PXDeleteCollectionsAction_performRedo___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6978660] deleteAssetCollections:*(*(a1 + 32) + 88)];
  v2 = MEMORY[0x1E6978768];
  v3 = *(*(a1 + 32) + 104);

  return [v2 deleteCollectionLists:v3];
}

- (void)performUndo:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__PXDeleteCollectionsAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

uint64_t __41__PXDeleteCollectionsAction_performUndo___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6978660] undeleteAssetCollections:*(*(a1 + 32) + 88)];
  v2 = MEMORY[0x1E6978768];
  v3 = *(*(a1 + 32) + 104);

  return [v2 undeleteCollectionLists:v3];
}

- (void)performAction:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [(PXDeleteCollectionsAction *)self collections];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([v12 canPerformEditOperation:6])
        {
          if ([v12 canContainAssets])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v5;
            }

            else
            {
              v13 = v4;
            }
          }

          else
          {
            v14 = [v12 canContainCollections];
            v13 = v6;
            if (!v14)
            {
              continue;
            }
          }

          [v13 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v15 = [v4 copy];
  assetCollections = self->_assetCollections;
  self->_assetCollections = v15;

  v17 = [v6 copy];
  collectionLists = self->_collectionLists;
  self->_collectionLists = v17;

  if ([v4 count] || objc_msgSend(v6, "count"))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __43__PXDeleteCollectionsAction_performAction___block_invoke;
    v25[3] = &unk_1E774C620;
    v26 = v4;
    v27 = v6;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __43__PXDeleteCollectionsAction_performAction___block_invoke_2;
    v22[3] = &unk_1E774BD88;
    v23 = v5;
    v19 = v21;
    v24 = v21;
    [(PXPhotosAction *)self performChanges:v25 completionHandler:v22];
  }

  else
  {
    v19 = v21;
    if ([v5 count])
    {
      [PXSharedCollectionsUtilities deleteAlbums:v5 completionHandler:v21];
    }

    else if (v21)
    {
      v20 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Nothing to delete, or that can be deleted"}];
      (*(v21 + 2))(v21, 0, v20);
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
  v2 = [(PXDeleteCollectionsAction *)self collections];
  if ([v2 count] == 1)
  {
    v3 = [v2 firstObject];
    v4 = v3;
    v5 = @"PXDeleteActionName";
    if (v3)
    {
      if ([v3 canContainAssets])
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

- (PXDeleteCollectionsAction)initWithCollection:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(PXDeleteCollectionsAction *)self initWithCollections:v6, v9, v10];
  return v7;
}

- (PXDeleteCollectionsAction)initWithCollections:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 photoLibrary];
    v13.receiver = self;
    v13.super_class = PXDeleteCollectionsAction;
    v8 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:v7];

    if (v8)
    {
      v9 = [v4 copy];
      collections = v8->_collections;
      v8->_collections = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end