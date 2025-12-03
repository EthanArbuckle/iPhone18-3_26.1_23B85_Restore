@interface PXMergeAssetCollectionsAction
- (PXMergeAssetCollectionsAction)initWithSourceAssetCollections:(id)collections targetAssetCollection:(id)collection;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXMergeAssetCollectionsAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  deleteCollectionsAction = [(PXMergeAssetCollectionsAction *)self deleteCollectionsAction];
  addAssetsToCollectionAction = [(PXMergeAssetCollectionsAction *)self addAssetsToCollectionAction];
  if (deleteCollectionsAction)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PXMergeAssetCollectionsAction_performUndo___block_invoke;
    v8[3] = &unk_1E774BD88;
    v10 = undoCopy;
    v9 = addAssetsToCollectionAction;
    [deleteCollectionsAction performUndo:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Unable to undo merge of asset collections"];
    (*(undoCopy + 2))(undoCopy, 0, v7);
  }
}

void __45__PXMergeAssetCollectionsAction_performUndo___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45__PXMergeAssetCollectionsAction_performUndo___block_invoke_2;
      v7[3] = &unk_1E7747648;
      v8 = *(a1 + 40);
      [v6 performUndo:v7];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)performAction:(id)action
{
  v28 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  array = [MEMORY[0x1E695DF70] array];
  sourceAssetCollections = [(PXMergeAssetCollectionsAction *)self sourceAssetCollections];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [sourceAssetCollections countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(sourceAssetCollections);
        }

        v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(*(&v23 + 1) + 8 * v10) options:0];
        fetchedObjects = [v11 fetchedObjects];
        [array addObjectsFromArray:fetchedObjects];

        ++v10;
      }

      while (v8 != v10);
      v8 = [sourceAssetCollections countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v13 = [[PXDeleteCollectionsAction alloc] initWithCollections:sourceAssetCollections];
  [(PXMergeAssetCollectionsAction *)self setDeleteCollectionsAction:v13];
  if ([array count])
  {
    v14 = [PXAddAssetsToAssetCollectionAction alloc];
    targetAssetCollection = [(PXMergeAssetCollectionsAction *)self targetAssetCollection];
    v16 = [(PXAddAssetsToAssetCollectionAction *)v14 initWithAssets:array assetCollection:targetAssetCollection];

    [(PXMergeAssetCollectionsAction *)self setAddAssetsToCollectionAction:v16];
    if (v16)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __47__PXMergeAssetCollectionsAction_performAction___block_invoke_2;
      v18[3] = &unk_1E774BD88;
      v20 = actionCopy;
      v19 = v13;
      [(PXAddAssetsToAssetCollectionAction *)v16 performAction:v18];

      v17 = v20;
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Unable to merge asset collections"];
      (*(actionCopy + 2))(actionCopy, 0, v17);
    }

    goto LABEL_15;
  }

  if (v13)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__PXMergeAssetCollectionsAction_performAction___block_invoke;
    v21[3] = &unk_1E7747648;
    v22 = actionCopy;
    [(PXDeleteCollectionsAction *)v13 performAction:v21];
    v16 = v22;
LABEL_15:
  }
}

void __47__PXMergeAssetCollectionsAction_performAction___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __47__PXMergeAssetCollectionsAction_performAction___block_invoke_3;
      v7[3] = &unk_1E7747648;
      v8 = *(a1 + 40);
      [v6 performAction:v7];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (PXMergeAssetCollectionsAction)initWithSourceAssetCollections:(id)collections targetAssetCollection:(id)collection
{
  collectionsCopy = collections;
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  v13.receiver = self;
  v13.super_class = PXMergeAssetCollectionsAction;
  v9 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:photoLibrary];

  if (v9)
  {
    v10 = [collectionsCopy copy];
    sourceAssetCollections = v9->_sourceAssetCollections;
    v9->_sourceAssetCollections = v10;

    objc_storeStrong(&v9->_targetAssetCollection, collection);
  }

  return v9;
}

@end