@interface PXAddAssetsToAssetCollectionAction
- (NSArray)unsavedSyndicatedAssets;
- (NSArray)userLibraryAssets;
- (PXAddAssetsToAssetCollectionAction)initWithAssets:(id)a3 assetCollection:(id)a4;
- (PXContentSyndicationPhotoKitAssetGroup)assetGroup;
- (void)_addAssets:(id)a3 completionHandler:(id)a4;
- (void)performAction:(id)a3;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
- (void)setDropTargetAsset:(id)a3;
- (void)setShouldSortAssetsByCreationDate:(BOOL)a3;
@end

@implementation PXAddAssetsToAssetCollectionAction

- (void)performRedo:(id)a3
{
  v4 = a3;
  v5 = [(PXAddAssetsToAssetCollectionAction *)self addedAssets];
  [(PXAddAssetsToAssetCollectionAction *)self _addAssets:v5 completionHandler:v4];
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXAddAssetsToAssetCollectionAction *)self targetPhotoLibrary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PXAddAssetsToAssetCollectionAction_performUndo___block_invoke;
  v6[3] = &unk_1E774C648;
  v6[4] = self;
  [v5 performChanges:v6 completionHandler:v4];
}

void __50__PXAddAssetsToAssetCollectionAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978660];
  v3 = [*(a1 + 32) assetCollection];
  v5 = [v2 changeRequestForAssetCollection:v3];

  v4 = [*(a1 + 32) addedAssets];
  [v5 removeAssets:v4];
}

- (void)performAction:(id)a3
{
  v13 = a3;
  v4 = [(PXAddAssetsToAssetCollectionAction *)self assetGroup];
  v5 = [v4 unsavedSyndicatedAssets];
  if ([v5 count])
  {
    (*(v13 + 2))(v13, 0, 0);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = [v4 userLibraryAssets];
    v8 = [v6 initWithArray:v7];

    v9 = [v4 syndicationIdentifiers];
    v10 = [(PXAddAssetsToAssetCollectionAction *)self targetPhotoLibrary];
    v11 = PXContentSyndicationUserLibraryAssetsFromSyndicationIdentifiers(v9, v10, 0);

    [v8 addObjectsFromArray:v11];
    v12 = [(PXAddAssetsToAssetCollectionAction *)self assetCollection];
    [PXAddAssetsToLastUsedAssetCollectionAction userDidAddAssetsToAssetCollection:v12];

    [(PXAddAssetsToAssetCollectionAction *)self _addAssets:v8 completionHandler:v13];
  }
}

- (void)_addAssets:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXAddAssetsToAssetCollectionAction *)self addedAssets];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(PXAddAssetsToAssetCollectionAction *)self shouldSortAssetsByCreationDate];
  }

  v10 = [(PXAddAssetsToAssetCollectionAction *)self existingAssets];
  v11 = [(PXAddAssetsToAssetCollectionAction *)self dropTargetAsset];
  v12 = [(PXAddAssetsToAssetCollectionAction *)self targetPhotoLibrary];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__PXAddAssetsToAssetCollectionAction__addAssets_completionHandler___block_invoke;
  v20[3] = &unk_1E773F018;
  v25 = v9;
  v21 = v6;
  v22 = v11;
  v23 = v10;
  v24 = self;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__PXAddAssetsToAssetCollectionAction__addAssets_completionHandler___block_invoke_2;
  v17[3] = &unk_1E774ACE8;
  v17[4] = self;
  v18 = v21;
  v19 = v7;
  v13 = v7;
  v14 = v21;
  v15 = v10;
  v16 = v11;
  [v12 performChanges:v20 completionHandler:v17];
}

void __67__PXAddAssetsToAssetCollectionAction__addAssets_completionHandler___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = MEMORY[0x1E6978630];
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v24[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v6 = [v2 px_orderedAssetsFromAssets:v3 sortDescriptors:v5];
  }

  else
  {
    v6 = *(a1 + 32);
  }

  if (*(a1 + 40))
  {
    v7 = [*(a1 + 48) indexOfObject:?];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = MEMORY[0x1E6978660];
  v9 = [*(a1 + 56) assetCollection];
  v10 = [v8 changeRequestForAssetCollection:v9];

  v11 = [MEMORY[0x1E696AD50] indexSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(a1 + 48) indexOfObject:{*(*(&v19 + 1) + 8 * i), v19}];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 addIndex:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    [v10 removeAssets:v12];
  }

  if ([v11 count] && *(a1 + 40))
  {
    if ([v11 containsIndex:v7])
    {
      goto LABEL_23;
    }

    v7 -= [v11 countOfIndexesInRange:{0, v7}];
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
    [v10 insertAssets:v12 atIndexes:v18];

    goto LABEL_25;
  }

LABEL_23:
  [v10 addAssets:v12];
LABEL_25:
}

void __67__PXAddAssetsToAssetCollectionAction__addAssets_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = a3;
  [v5 setAddedAssets:v4];
  (*(a1[6] + 16))();
}

- (void)setDropTargetAsset:(id)a3
{
  v5 = a3;
  if ([(PXAction *)self executionStarted])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXAddAssetsToAssetCollectionAction.m" lineNumber:71 description:{@"%s cannot be called after the receiver has started executing.", "-[PXAddAssetsToAssetCollectionAction setDropTargetAsset:]"}];
  }

  dropTargetAsset = self->_dropTargetAsset;
  self->_dropTargetAsset = v5;
}

- (void)setShouldSortAssetsByCreationDate:(BOOL)a3
{
  if ([(PXAction *)self executionStarted])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXAddAssetsToAssetCollectionAction.m" lineNumber:66 description:{@"%s cannot be called after the receiver has started executing.", "-[PXAddAssetsToAssetCollectionAction setShouldSortAssetsByCreationDate:]"}];
  }

  self->_shouldSortAssetsByCreationDate = a3;
}

- (NSArray)unsavedSyndicatedAssets
{
  v2 = [(PXAddAssetsToAssetCollectionAction *)self assetGroup];
  v3 = [v2 unsavedSyndicatedAssets];

  return v3;
}

- (NSArray)userLibraryAssets
{
  v2 = [(PXAddAssetsToAssetCollectionAction *)self assetGroup];
  v3 = [v2 userLibraryAssets];

  return v3;
}

- (PXContentSyndicationPhotoKitAssetGroup)assetGroup
{
  assetGroup = self->_assetGroup;
  if (!assetGroup)
  {
    v4 = [PXContentSyndicationPhotoKitAssetGroup alloc];
    v5 = [(PXAssetsAction *)self assets];
    v6 = [(PXContentSyndicationPhotoKitAssetGroup *)v4 initWithAssets:v5];
    v7 = self->_assetGroup;
    self->_assetGroup = v6;

    assetGroup = self->_assetGroup;
  }

  return assetGroup;
}

- (PXAddAssetsToAssetCollectionAction)initWithAssets:(id)a3 assetCollection:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  obj = a4;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [v6 photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];

  v26 = v9;
  v25 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:v9];
  v10 = [v25 fetchedObjectIDsSet];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 objectID];
        v18 = [v10 containsObject:v17];

        if ((v18 & 1) == 0)
        {
          [v7 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v27.receiver = self;
  v27.super_class = PXAddAssetsToAssetCollectionAction;
  v19 = [(PXAssetsAction *)&v27 initWithAssets:v7];
  if (v19)
  {
    v20 = [v6 photoLibrary];
    targetPhotoLibrary = v19->_targetPhotoLibrary;
    v19->_targetPhotoLibrary = v20;

    objc_storeStrong(&v19->_assetCollection, obj);
    objc_storeStrong(&v19->_existingAssets, v25);
  }

  return v19;
}

@end