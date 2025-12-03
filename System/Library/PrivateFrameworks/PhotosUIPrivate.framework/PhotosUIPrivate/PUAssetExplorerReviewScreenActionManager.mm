@interface PUAssetExplorerReviewScreenActionManager
- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (BOOL)shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (Class)_actionPerformerClassForActionType:(unint64_t)type;
- (PUAssetExplorerReviewScreenActionManager)initWithSourceType:(unint64_t)type;
- (PUAssetExplorerReviewScreenActionManagerDelegate)reviewScreenActionManagerDelegate;
- (PUReviewAssetProvider)reviewAssetProvider;
- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetsByAssetCollection:(id)collection;
- (unint64_t)_reviewScreenActionTypeForAssetActionType:(unint64_t)type;
@end

@implementation PUAssetExplorerReviewScreenActionManager

- (PUReviewAssetProvider)reviewAssetProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_reviewAssetProvider);

  return WeakRetained;
}

- (PUAssetExplorerReviewScreenActionManagerDelegate)reviewScreenActionManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reviewScreenActionManagerDelegate);

  return WeakRetained;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  v8 = [(PUAssetExplorerReviewScreenActionManager *)self _actionPerformerClassForActionType:type];
  if (v8)
  {
    v9 = [[v8 alloc] initWithActionType:type assets:0 orAssetsByAssetCollection:collectionCopy];
  }

  else
  {
    v45.receiver = self;
    v45.super_class = PUAssetExplorerReviewScreenActionManager;
    v9 = [(PUAssetActionManager *)&v45 actionPerformerForSimpleActionType:type onAssetsByAssetCollection:collectionCopy];
  }

  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    reviewScreenActionManagerDelegate = [(PUAssetExplorerReviewScreenActionManager *)self reviewScreenActionManagerDelegate];
    reviewAssetProvider = [(PUAssetExplorerReviewScreenActionManager *)self reviewAssetProvider];
    if (type > 49)
    {
      if (type <= 51)
      {
        if (type == 50)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionManager.m" lineNumber:448 description:@"Expecting markup action performer"];
          }

          reviewScreenActionManagerDelegate2 = v11;
          [reviewScreenActionManagerDelegate2 setReviewAssetProvider:reviewAssetProvider];
          [reviewScreenActionManagerDelegate2 setMarkupObserver:reviewScreenActionManagerDelegate];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionManager.m" lineNumber:457 description:@"Expecting edit action performer"];
          }

          v15 = v11;
          [v15 setReviewAssetProvider:reviewAssetProvider];
          reviewScreenActionManagerDelegate2 = [(PUAssetExplorerReviewScreenActionManager *)self reviewScreenActionManagerDelegate];
          [v15 setPhotoDelegate:reviewScreenActionManagerDelegate2];
        }

        goto LABEL_30;
      }

      switch(type)
      {
        case '4':
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_6;
          v25[3] = &unk_1E7B80C38;
          v26 = reviewScreenActionManagerDelegate;
          selfCopy = self;
          [v11 setPerformUserInteractionTaskBlock:v25];
          reviewScreenActionManagerDelegate2 = v26;
          goto LABEL_30;
        case '5':
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_7;
          v22[3] = &unk_1E7B80C38;
          v23 = reviewScreenActionManagerDelegate;
          selfCopy2 = self;
          [v11 setPerformUserInteractionTaskBlock:v22];
          reviewScreenActionManagerDelegate2 = v23;
          goto LABEL_30;
        case '6':
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_8;
          v19[3] = &unk_1E7B80C38;
          v20 = reviewScreenActionManagerDelegate;
          selfCopy3 = self;
          [v11 setPerformUserInteractionTaskBlock:v19];
          reviewScreenActionManagerDelegate2 = v20;
LABEL_30:

          break;
      }
    }

    else
    {
      if (type > 46)
      {
        if (type == 47)
        {
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_3;
          v35[3] = &unk_1E7B80C38;
          v36 = reviewScreenActionManagerDelegate;
          selfCopy4 = self;
          [v11 setPerformUserInteractionTaskBlock:v35];
          reviewScreenActionManagerDelegate2 = v36;
        }

        else if (type == 48)
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_4;
          v32[3] = &unk_1E7B80C38;
          v33 = reviewScreenActionManagerDelegate;
          selfCopy5 = self;
          [v11 setPerformUserInteractionTaskBlock:v32];
          reviewScreenActionManagerDelegate2 = v33;
        }

        else
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_5;
          v28[3] = &unk_1E7B809F0;
          v29 = collectionCopy;
          v30 = reviewScreenActionManagerDelegate;
          selfCopy6 = self;
          [v11 setPerformUserInteractionTaskBlock:v28];

          reviewScreenActionManagerDelegate2 = v29;
        }

        goto LABEL_30;
      }

      if (type == 45)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke;
        v41[3] = &unk_1E7B809F0;
        v42 = collectionCopy;
        v43 = reviewScreenActionManagerDelegate;
        selfCopy7 = self;
        [v11 setPerformUserInteractionTaskBlock:v41];

        reviewScreenActionManagerDelegate2 = v42;
        goto LABEL_30;
      }

      if (type == 46)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_2;
        v38[3] = &unk_1E7B80C38;
        v39 = reviewScreenActionManagerDelegate;
        selfCopy8 = self;
        [v11 setPerformUserInteractionTaskBlock:v38];
        reviewScreenActionManagerDelegate2 = v39;
        goto LABEL_30;
      }
    }
  }

  return v10;
}

void __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(a1 + 40) assetExplorerReviewScreenActionManager:*(a1 + 48) didPressSelectForAsset:*(*(&v13 + 1) + 8 * v12++)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

void __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_5(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(a1 + 40) assetExplorerReviewScreenActionManager:*(a1 + 48) didToggleLivePhoto:*(*(&v13 + 1) + 8 * v12++)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

- (BOOL)shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  if (-[PUAssetExplorerReviewScreenActionManager _hasReviewScreenActionTypeForAssetActionType:](self, "_hasReviewScreenActionTypeForAssetActionType:", type) && (v10 = -[PUAssetExplorerReviewScreenActionManager _reviewScreenActionTypeForAssetActionType:](self, "_reviewScreenActionTypeForAssetActionType:", type), -[PUAssetExplorerReviewScreenActionManager reviewScreenActionManagerDelegate](self, "reviewScreenActionManagerDelegate"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = [v11 assetExplorerReviewScreenActionManager:self shouldEnableActionType:v10 onAsset:assetCopy inAssetCollection:collectionCopy], v11, !v10))
  {
    v14 = 0;
  }

  else
  {
    v12 = [(PUAssetExplorerReviewScreenActionManager *)self _actionPerformerClassForActionType:type];
    if (v12)
    {
      v13 = [(objc_class *)v12 shouldEnableOnAsset:assetCopy inAssetCollection:collectionCopy];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PUAssetExplorerReviewScreenActionManager;
      v13 = [(PUAssetActionManager *)&v16 shouldEnableActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
    }

    v14 = v13;
  }

  return v14;
}

- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  if (-[PUAssetExplorerReviewScreenActionManager _hasReviewScreenActionTypeForAssetActionType:](self, "_hasReviewScreenActionTypeForAssetActionType:", type) && ((v10 = -[PUAssetExplorerReviewScreenActionManager _reviewScreenActionTypeForAssetActionType:](self, "_reviewScreenActionTypeForAssetActionType:", type), v11 = v10, v10 - 3 >= 8) && v10 != 1 || assetCopy) && (-[PUAssetExplorerReviewScreenActionManager reviewScreenActionManagerDelegate](self, "reviewScreenActionManagerDelegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 assetExplorerReviewScreenActionManager:self canPerformActionType:v11 onAsset:assetCopy inAssetCollection:collectionCopy], v12, v13))
  {
    v14 = [(PUAssetExplorerReviewScreenActionManager *)self _actionPerformerClassForActionType:type];
    if (v14)
    {
      v15 = [(objc_class *)v14 canPerformOnAsset:assetCopy inAssetCollection:collectionCopy];
    }

    else
    {
      v18.receiver = self;
      v18.super_class = PUAssetExplorerReviewScreenActionManager;
      v15 = [(PUAssetActionManager *)&v18 canPerformActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)_reviewScreenActionTypeForAssetActionType:(unint64_t)type
{
  if (type < 0x2D)
  {
    goto LABEL_2;
  }

  if (type <= 53)
  {
    v9 = 7;
    v10 = 8;
    if (type != 53)
    {
      v10 = 0;
    }

    if (type != 52)
    {
      v9 = v10;
    }

    v11 = 5;
    v12 = 6;
    if (type != 51)
    {
      v12 = 0;
    }

    if (type != 50)
    {
      v11 = v12;
    }

    if (type <= 51)
    {
      v9 = v11;
    }

    v13 = 2;
    v14 = 4;
    if (type != 49)
    {
      v14 = 0;
    }

    if (type != 48)
    {
      v13 = v14;
    }

    v15 = 3;
    if (type != 45)
    {
      v15 = type == 47;
    }

    if (type <= 47)
    {
      v13 = v15;
    }

    if (type <= 49)
    {
      return v13;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    if (type - 56 < 0xC)
    {
LABEL_2:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionManager.m" lineNumber:308 description:{@"Unexpected action type %lu", type}];

      return 0;
    }

    v8 = 10;
    if (type != 55)
    {
      v8 = 0;
    }

    if (type == 54)
    {
      return 9;
    }

    else
    {
      return v8;
    }
  }
}

- (Class)_actionPerformerClassForActionType:(unint64_t)type
{
  if (type - 45 > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (PUAssetExplorerReviewScreenActionManager)initWithSourceType:(unint64_t)type
{
  v11.receiver = self;
  v11.super_class = PUAssetExplorerReviewScreenActionManager;
  v4 = [(PUAssetExplorerReviewScreenActionManager *)&v11 init];
  if (v4)
  {
    v5 = [[PUUUIDSelectionManager alloc] initWithSelectedUUIDs:0];
    selectionManager = v4->_selectionManager;
    v4->_selectionManager = v5;

    v7 = [[PUUUIDSelectionManager alloc] initWithSelectedUUIDs:0];
    disableLivePhotosSelectionManager = v4->_disableLivePhotosSelectionManager;
    v4->_disableLivePhotosSelectionManager = v7;

    v4->__sourceType = type;
    v9 = v4;
  }

  return v4;
}

@end