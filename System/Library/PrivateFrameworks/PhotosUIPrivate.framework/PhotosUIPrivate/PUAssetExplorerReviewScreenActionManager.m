@interface PUAssetExplorerReviewScreenActionManager
- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
- (BOOL)shouldEnableActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
- (Class)_actionPerformerClassForActionType:(unint64_t)a3;
- (PUAssetExplorerReviewScreenActionManager)initWithSourceType:(unint64_t)a3;
- (PUAssetExplorerReviewScreenActionManagerDelegate)reviewScreenActionManagerDelegate;
- (PUReviewAssetProvider)reviewAssetProvider;
- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetsByAssetCollection:(id)a4;
- (unint64_t)_reviewScreenActionTypeForAssetActionType:(unint64_t)a3;
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

- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetsByAssetCollection:(id)a4
{
  v7 = a4;
  v8 = [(PUAssetExplorerReviewScreenActionManager *)self _actionPerformerClassForActionType:a3];
  if (v8)
  {
    v9 = [[v8 alloc] initWithActionType:a3 assets:0 orAssetsByAssetCollection:v7];
  }

  else
  {
    v45.receiver = self;
    v45.super_class = PUAssetExplorerReviewScreenActionManager;
    v9 = [(PUAssetActionManager *)&v45 actionPerformerForSimpleActionType:a3 onAssetsByAssetCollection:v7];
  }

  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = [(PUAssetExplorerReviewScreenActionManager *)self reviewScreenActionManagerDelegate];
    v13 = [(PUAssetExplorerReviewScreenActionManager *)self reviewAssetProvider];
    if (a3 > 49)
    {
      if (a3 <= 51)
      {
        if (a3 == 50)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18 = [MEMORY[0x1E696AAA8] currentHandler];
            [v18 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionManager.m" lineNumber:448 description:@"Expecting markup action performer"];
          }

          v14 = v11;
          [v14 setReviewAssetProvider:v13];
          [v14 setMarkupObserver:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = [MEMORY[0x1E696AAA8] currentHandler];
            [v17 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionManager.m" lineNumber:457 description:@"Expecting edit action performer"];
          }

          v15 = v11;
          [v15 setReviewAssetProvider:v13];
          v14 = [(PUAssetExplorerReviewScreenActionManager *)self reviewScreenActionManagerDelegate];
          [v15 setPhotoDelegate:v14];
        }

        goto LABEL_30;
      }

      switch(a3)
      {
        case '4':
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_6;
          v25[3] = &unk_1E7B80C38;
          v26 = v12;
          v27 = self;
          [v11 setPerformUserInteractionTaskBlock:v25];
          v14 = v26;
          goto LABEL_30;
        case '5':
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_7;
          v22[3] = &unk_1E7B80C38;
          v23 = v12;
          v24 = self;
          [v11 setPerformUserInteractionTaskBlock:v22];
          v14 = v23;
          goto LABEL_30;
        case '6':
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_8;
          v19[3] = &unk_1E7B80C38;
          v20 = v12;
          v21 = self;
          [v11 setPerformUserInteractionTaskBlock:v19];
          v14 = v20;
LABEL_30:

          break;
      }
    }

    else
    {
      if (a3 > 46)
      {
        if (a3 == 47)
        {
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_3;
          v35[3] = &unk_1E7B80C38;
          v36 = v12;
          v37 = self;
          [v11 setPerformUserInteractionTaskBlock:v35];
          v14 = v36;
        }

        else if (a3 == 48)
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_4;
          v32[3] = &unk_1E7B80C38;
          v33 = v12;
          v34 = self;
          [v11 setPerformUserInteractionTaskBlock:v32];
          v14 = v33;
        }

        else
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_5;
          v28[3] = &unk_1E7B809F0;
          v29 = v7;
          v30 = v12;
          v31 = self;
          [v11 setPerformUserInteractionTaskBlock:v28];

          v14 = v29;
        }

        goto LABEL_30;
      }

      if (a3 == 45)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke;
        v41[3] = &unk_1E7B809F0;
        v42 = v7;
        v43 = v12;
        v44 = self;
        [v11 setPerformUserInteractionTaskBlock:v41];

        v14 = v42;
        goto LABEL_30;
      }

      if (a3 == 46)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __105__PUAssetExplorerReviewScreenActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke_2;
        v38[3] = &unk_1E7B80C38;
        v39 = v12;
        v40 = self;
        [v11 setPerformUserInteractionTaskBlock:v38];
        v14 = v39;
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

- (BOOL)shouldEnableActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (-[PUAssetExplorerReviewScreenActionManager _hasReviewScreenActionTypeForAssetActionType:](self, "_hasReviewScreenActionTypeForAssetActionType:", a3) && (v10 = -[PUAssetExplorerReviewScreenActionManager _reviewScreenActionTypeForAssetActionType:](self, "_reviewScreenActionTypeForAssetActionType:", a3), -[PUAssetExplorerReviewScreenActionManager reviewScreenActionManagerDelegate](self, "reviewScreenActionManagerDelegate"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = [v11 assetExplorerReviewScreenActionManager:self shouldEnableActionType:v10 onAsset:v8 inAssetCollection:v9], v11, !v10))
  {
    v14 = 0;
  }

  else
  {
    v12 = [(PUAssetExplorerReviewScreenActionManager *)self _actionPerformerClassForActionType:a3];
    if (v12)
    {
      v13 = [(objc_class *)v12 shouldEnableOnAsset:v8 inAssetCollection:v9];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PUAssetExplorerReviewScreenActionManager;
      v13 = [(PUAssetActionManager *)&v16 shouldEnableActionType:a3 onAsset:v8 inAssetCollection:v9];
    }

    v14 = v13;
  }

  return v14;
}

- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (-[PUAssetExplorerReviewScreenActionManager _hasReviewScreenActionTypeForAssetActionType:](self, "_hasReviewScreenActionTypeForAssetActionType:", a3) && ((v10 = -[PUAssetExplorerReviewScreenActionManager _reviewScreenActionTypeForAssetActionType:](self, "_reviewScreenActionTypeForAssetActionType:", a3), v11 = v10, v10 - 3 >= 8) && v10 != 1 || v8) && (-[PUAssetExplorerReviewScreenActionManager reviewScreenActionManagerDelegate](self, "reviewScreenActionManagerDelegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 assetExplorerReviewScreenActionManager:self canPerformActionType:v11 onAsset:v8 inAssetCollection:v9], v12, v13))
  {
    v14 = [(PUAssetExplorerReviewScreenActionManager *)self _actionPerformerClassForActionType:a3];
    if (v14)
    {
      v15 = [(objc_class *)v14 canPerformOnAsset:v8 inAssetCollection:v9];
    }

    else
    {
      v18.receiver = self;
      v18.super_class = PUAssetExplorerReviewScreenActionManager;
      v15 = [(PUAssetActionManager *)&v18 canPerformActionType:a3 onAsset:v8 inAssetCollection:v9];
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)_reviewScreenActionTypeForAssetActionType:(unint64_t)a3
{
  if (a3 < 0x2D)
  {
    goto LABEL_2;
  }

  if (a3 <= 53)
  {
    v9 = 7;
    v10 = 8;
    if (a3 != 53)
    {
      v10 = 0;
    }

    if (a3 != 52)
    {
      v9 = v10;
    }

    v11 = 5;
    v12 = 6;
    if (a3 != 51)
    {
      v12 = 0;
    }

    if (a3 != 50)
    {
      v11 = v12;
    }

    if (a3 <= 51)
    {
      v9 = v11;
    }

    v13 = 2;
    v14 = 4;
    if (a3 != 49)
    {
      v14 = 0;
    }

    if (a3 != 48)
    {
      v13 = v14;
    }

    v15 = 3;
    if (a3 != 45)
    {
      v15 = a3 == 47;
    }

    if (a3 <= 47)
    {
      v13 = v15;
    }

    if (a3 <= 49)
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
    if (a3 - 56 < 0xC)
    {
LABEL_2:
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenActionManager.m" lineNumber:308 description:{@"Unexpected action type %lu", a3}];

      return 0;
    }

    v8 = 10;
    if (a3 != 55)
    {
      v8 = 0;
    }

    if (a3 == 54)
    {
      return 9;
    }

    else
    {
      return v8;
    }
  }
}

- (Class)_actionPerformerClassForActionType:(unint64_t)a3
{
  if (a3 - 45 > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (PUAssetExplorerReviewScreenActionManager)initWithSourceType:(unint64_t)a3
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

    v4->__sourceType = a3;
    v9 = v4;
  }

  return v4;
}

@end