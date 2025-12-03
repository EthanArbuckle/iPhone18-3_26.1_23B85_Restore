@interface PXStoryRearrangeMemoryAssetsAction
- (PXStoryRearrangeMemoryAssetsAction)initWithModel:(id)model movedAssets:(id)assets beforeAsset:(id)asset;
- (void)performAction:(id)action;
@end

@implementation PXStoryRearrangeMemoryAssetsAction

- (void)performAction:(id)action
{
  v43 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  movedAssets = [(PXStoryRearrangeMemoryAssetsAction *)self movedAssets];
  targetAsset = [(PXStoryRearrangeMemoryAssetsAction *)self targetAsset];
  model = [(PXStoryRearrangeMemoryAssetsAction *)self model];
  recipeManager = [model recipeManager];

  assetsDataSourceManager = [recipeManager assetsDataSourceManager];
  dataSource = [assetsDataSourceManager dataSource];

  if (dataSource && [movedAssets count] && objc_msgSend(dataSource, "numberOfSections") == 1)
  {
    [dataSource firstSectionIndexPath];
    v11 = [dataSource assetsInSectionIndexPath:v41];
    v12 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(v11, "count")}];
    v13 = [v11 objectsAtIndexes:v12];
    v29 = [v13 mutableCopy];

    if (targetAsset)
    {
      v14 = [v11 indexOfObject:targetAsset];
    }

    else
    {
      v14 = [v11 count];
    }

    v15 = v29;
    v16 = [PXDragAndDropUtilities adjustedTargetIndexForCollection:v29 movedObjects:movedAssets targetIndex:v14];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      (*(actionCopy + 2))(actionCopy, 0, 0);
    }

    else
    {
      v26 = v12;
      v27 = v11;
      v28 = targetAsset;
      v24 = v16;
      v25 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v16, objc_msgSend(movedAssets, "count")}];
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = movedAssets;
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [v17 addObject:*(*(&v37 + 1) + 8 * i)];
          }

          v20 = [v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v20);
      }

      [v29 removeObjectsInArray:v17];
      [v29 insertObjects:v17 atIndexes:v25];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__PXStoryRearrangeMemoryAssetsAction_performAction___block_invoke;
      block[3] = &unk_1E7748800;
      block[4] = self;
      v31 = recipeManager;
      v36 = v24;
      v32 = dataSource;
      v33 = v17;
      v34 = v29;
      v35 = actionCopy;
      v23 = v17;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v15 = v29;
      v11 = v27;
      targetAsset = v28;
      v12 = v26;
    }
  }

  else
  {
    (*(actionCopy + 2))(actionCopy, 0, 0);
  }
}

void __52__PXStoryRearrangeMemoryAssetsAction_performAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) model];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PXStoryRearrangeMemoryAssetsAction_performAction___block_invoke_2;
  v9[3] = &unk_1E77487D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v13 = *(a1 + 80);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 72);
  [v2 requestPersistencePermissionForUserActionKind:2 completionHandler:v9];
}

void __52__PXStoryRearrangeMemoryAssetsAction_performAction___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__PXStoryRearrangeMemoryAssetsAction_performAction___block_invoke_3;
    v11[3] = &unk_1E77487B0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v15 = *(a1 + 72);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v12 = v9;
    v13 = v8;
    v14 = *(a1 + 64);
    [v3 performChanges:v11];
  }

  else
  {
    v10 = *(*(a1 + 64) + 16);

    v10();
  }
}

void __52__PXStoryRearrangeMemoryAssetsAction_performAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [*(a1 + 32) firstSectionIndexPath];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v5 = [v4 keyAssetsInSectionIndexPath:&v8];
  v6 = [v5 firstObject];

  if (!*(a1 + 72) || [*(a1 + 40) containsObject:v6])
  {
    v7 = [*(a1 + 48) firstObject];
    [v3 applyKeyAsset:v7];
  }

  PXDisplayAssetFetchResultFromArray();
}

- (PXStoryRearrangeMemoryAssetsAction)initWithModel:(id)model movedAssets:(id)assets beforeAsset:(id)asset
{
  modelCopy = model;
  assetsCopy = assets;
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  v15.receiver = self;
  v15.super_class = PXStoryRearrangeMemoryAssetsAction;
  v13 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:photoLibrary];

  if (v13)
  {
    objc_storeStrong(&v13->_model, model);
    objc_storeStrong(&v13->_movedAssets, assets);
    objc_storeStrong(&v13->_targetAsset, asset);
  }

  return v13;
}

@end