@interface PXRemoveAssetsFromAssetCollectionAction
- (PXRemoveAssetsFromAssetCollectionAction)initWithAssets:(id)assets assetCollection:(id)collection;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXRemoveAssetsFromAssetCollectionAction

- (void)performUndo:(id)undo
{
  removedAssetIdentifiers = self->_removedAssetIdentifiers;
  undoCopy = undo;
  allKeys = [(NSDictionary *)removedAssetIdentifiers allKeys];
  standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
  v8 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithLocalIdentifiers:allKeys options:standardFetchOptions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PXRemoveAssetsFromAssetCollectionAction_performUndo___block_invoke_2;
  v11[3] = &unk_1E774BDB0;
  v12 = v8;
  selfCopy = self;
  v14 = standardFetchOptions;
  v15 = &__block_literal_global_40;
  v9 = standardFetchOptions;
  v10 = v8;
  [(PXPhotosAction *)self performChanges:v11 completionHandler:undoCopy];
}

void __55__PXRemoveAssetsFromAssetCollectionAction_performUndo___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v14 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v15 + 1) + 8 * i);
        v6 = [v5 localIdentifier];
        v7 = [*(*(a1 + 40) + 112) objectForKeyedSubscript:v6];
        v8 = [*(*(a1 + 40) + 104) objectForKeyedSubscript:v6];
        v9 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v8 options:*(a1 + 48)];
        v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:*(a1 + 48)];
        v11 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v5 assets:v10];
        v12 = (*(*(a1 + 56) + 16))(*(a1 + 56), v7, [v10 count]);
        [v11 insertAssets:v9 atIndexes:v12];
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

id __55__PXRemoveAssetsFromAssetCollectionAction_performUndo___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = [v4 firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    do
    {
      if (v7 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = v7;
      }

      [v5 addIndex:v8];
      v7 = [v4 indexGreaterThanIndex:v7];
      ++a3;
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v9 = [v5 copy];

  return v9;
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__PXRemoveAssetsFromAssetCollectionAction_performAction___block_invoke;
  v14[3] = &unk_1E774A1B8;
  v14[4] = self;
  v15 = v5;
  v16 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PXRemoveAssetsFromAssetCollectionAction_performAction___block_invoke_5;
  v10[3] = &unk_1E774AD10;
  v10[4] = self;
  v11 = v15;
  v12 = v16;
  v13 = actionCopy;
  v7 = actionCopy;
  v8 = v16;
  v9 = v15;
  [(PXPhotosAction *)self performChanges:v14 completionHandler:v10];
}

void __57__PXRemoveAssetsFromAssetCollectionAction_performAction___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 120) count])
  {
    [MEMORY[0x1E6978660] changeRequestForAssetCollection:*(*(a1 + 32) + 128) assets:0];
    [objc_claimAutoreleasedReturnValue() removeAssets:*(*(a1 + 32) + 120)];
    [*(*(a1 + 32) + 128) localIdentifier];
    objc_claimAutoreleasedReturnValue();
    PXMap();
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PXRemoveAssetsFromAssetCollectionAction_performAction___block_invoke_3;
  v3[3] = &unk_1E773A498;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateSelectedAssetIndexSetsUsingBlock:v3];
}

void __57__PXRemoveAssetsFromAssetCollectionAction_performAction___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 112), *(a1 + 48));
  }

  (*(*(a1 + 56) + 16))();
}

void __57__PXRemoveAssetsFromAssetCollectionAction_performAction___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v10 = [v7 objectsAtIndexes:v6];
  v9 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:v8 assets:v7];

  [v9 removeAssets:v10];
  [v8 localIdentifier];
  objc_claimAutoreleasedReturnValue();

  PXMap();
}

- (PXRemoveAssetsFromAssetCollectionAction)initWithAssets:(id)assets assetCollection:(id)collection
{
  assetsCopy = assets;
  collectionCopy = collection;
  firstObject = [assetsCopy firstObject];
  v9 = firstObject;
  if (firstObject)
  {
    photoLibrary = [firstObject photoLibrary];
    v11 = [(PXPhotosAction *)self initWithPhotoLibrary:photoLibrary];

    if (v11)
    {
      v12 = [assetsCopy copy];
      assetsInput = v11->_assetsInput;
      v11->_assetsInput = v12;

      objc_storeStrong(&v11->_collectionInput, collection);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end