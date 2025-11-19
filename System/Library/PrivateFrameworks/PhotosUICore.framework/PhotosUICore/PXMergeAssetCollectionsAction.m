@interface PXMergeAssetCollectionsAction
- (PXMergeAssetCollectionsAction)initWithSourceAssetCollections:(id)a3 targetAssetCollection:(id)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXMergeAssetCollectionsAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXMergeAssetCollectionsAction *)self deleteCollectionsAction];
  v6 = [(PXMergeAssetCollectionsAction *)self addAssetsToCollectionAction];
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PXMergeAssetCollectionsAction_performUndo___block_invoke;
    v8[3] = &unk_1E774BD88;
    v10 = v4;
    v9 = v6;
    [v5 performUndo:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Unable to undo merge of asset collections"];
    (*(v4 + 2))(v4, 0, v7);
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

- (void)performAction:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(PXMergeAssetCollectionsAction *)self sourceAssetCollections];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(*(&v23 + 1) + 8 * v10) options:0];
        v12 = [v11 fetchedObjects];
        [v5 addObjectsFromArray:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v13 = [[PXDeleteCollectionsAction alloc] initWithCollections:v6];
  [(PXMergeAssetCollectionsAction *)self setDeleteCollectionsAction:v13];
  if ([v5 count])
  {
    v14 = [PXAddAssetsToAssetCollectionAction alloc];
    v15 = [(PXMergeAssetCollectionsAction *)self targetAssetCollection];
    v16 = [(PXAddAssetsToAssetCollectionAction *)v14 initWithAssets:v5 assetCollection:v15];

    [(PXMergeAssetCollectionsAction *)self setAddAssetsToCollectionAction:v16];
    if (v16)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __47__PXMergeAssetCollectionsAction_performAction___block_invoke_2;
      v18[3] = &unk_1E774BD88;
      v20 = v4;
      v19 = v13;
      [(PXAddAssetsToAssetCollectionAction *)v16 performAction:v18];

      v17 = v20;
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Unable to merge asset collections"];
      (*(v4 + 2))(v4, 0, v17);
    }

    goto LABEL_15;
  }

  if (v13)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__PXMergeAssetCollectionsAction_performAction___block_invoke;
    v21[3] = &unk_1E7747648;
    v22 = v4;
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

- (PXMergeAssetCollectionsAction)initWithSourceAssetCollections:(id)a3 targetAssetCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 photoLibrary];
  v13.receiver = self;
  v13.super_class = PXMergeAssetCollectionsAction;
  v9 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:v8];

  if (v9)
  {
    v10 = [v6 copy];
    sourceAssetCollections = v9->_sourceAssetCollections;
    v9->_sourceAssetCollections = v10;

    objc_storeStrong(&v9->_targetAssetCollection, a4);
  }

  return v9;
}

@end