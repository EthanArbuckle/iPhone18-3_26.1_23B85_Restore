@interface PUAssetActionManager
+ (OS_os_log)actionManagerLog;
+ (id)_unlockDeviceHandlerWithActionType;
+ (void)setUnlockDeviceHandlerWithActionType:(id)a3;
- (BOOL)canPerformAction:(unint64_t)a3 onAllAssetReferences:(id)a4;
- (BOOL)canPerformAction:(unint64_t)a3 onAllAssetsByAssetCollection:(id)a4;
- (BOOL)shouldEnableActionType:(unint64_t)a3 onAllAssetsByAssetCollection:(id)a4;
- (PUAssetActionManagerDelegate)delegate;
- (id)_assetsByAssetCollectionForAssetReferences:(id)a3;
- (id)actionPerformerForSettingFavoriteTo:(BOOL)a3 onAssetReferences:(id)a4;
- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetReferences:(id)a4;
@end

@implementation PUAssetActionManager

+ (OS_os_log)actionManagerLog
{
  if (actionManagerLog_onceToken != -1)
  {
    dispatch_once(&actionManagerLog_onceToken, &__block_literal_global_8417);
  }

  v3 = actionManagerLog_actionManagerLog;

  return v3;
}

uint64_t __40__PUAssetActionManager_actionManagerLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "AssetActions");
  v1 = actionManagerLog_actionManagerLog;
  actionManagerLog_actionManagerLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_unlockDeviceHandlerWithActionType
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _Block_copy(_sharedUnlockDeviceHandlerWithActionType);
  objc_sync_exit(v2);

  v4 = _Block_copy(v3);

  return v4;
}

+ (void)setUnlockDeviceHandlerWithActionType:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PUAssetActionManager.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"unlockDeviceHandlerWithActionType != nil"}];
  }

  v5 = a1;
  objc_sync_enter(v5);
  v6 = [v9 copy];
  v7 = _sharedUnlockDeviceHandlerWithActionType;
  _sharedUnlockDeviceHandlerWithActionType = v6;

  objc_sync_exit(v5);
}

- (PUAssetActionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldEnableActionType:(unint64_t)a3 onAllAssetsByAssetCollection:(id)a4
{
  v6 = a4;
  if ([v6 count])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__PUAssetActionManager_shouldEnableActionType_onAllAssetsByAssetCollection___block_invoke;
    v9[3] = &unk_1E7B75240;
    v9[4] = self;
    v9[5] = &v10;
    v9[6] = a3;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = [(PUAssetActionManager *)self shouldEnableActionType:a3 onAsset:0 inAssetCollection:0];
  }

  return v7 & 1;
}

void __76__PUAssetActionManager_shouldEnableActionType_onAllAssetsByAssetCollection___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) shouldEnableActionType:*(a1 + 48) onAsset:*(*(&v13 + 1) + 8 * v12) inAssetCollection:{v7, v13}];
      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)canPerformAction:(unint64_t)a3 onAllAssetReferences:(id)a4
{
  v6 = [(PUAssetActionManager *)self _assetsByAssetCollectionForAssetReferences:a4];
  LOBYTE(a3) = [(PUAssetActionManager *)self canPerformAction:a3 onAllAssetsByAssetCollection:v6];

  return a3;
}

- (BOOL)canPerformAction:(unint64_t)a3 onAllAssetsByAssetCollection:(id)a4
{
  v6 = a4;
  if ([v6 count])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__PUAssetActionManager_canPerformAction_onAllAssetsByAssetCollection___block_invoke;
    v9[3] = &unk_1E7B75240;
    v9[4] = self;
    v9[5] = &v10;
    v9[6] = a3;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = [(PUAssetActionManager *)self canPerformActionType:a3 onAsset:0 inAssetCollection:0];
  }

  return v7 & 1;
}

void __70__PUAssetActionManager_canPerformAction_onAllAssetsByAssetCollection___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) canPerformActionType:*(a1 + 48) onAsset:*(*(&v13 + 1) + 8 * v12) inAssetCollection:{v7, v13}];
      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (id)actionPerformerForSettingFavoriteTo:(BOOL)a3 onAssetReferences:(id)a4
{
  v4 = a3;
  v6 = [(PUAssetActionManager *)self _assetsByAssetCollectionForAssetReferences:a4];
  v7 = [(PUAssetActionManager *)self actionPerformerForSettingFavoriteTo:v4 onAssetsByAssetCollection:v6];

  return v7;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetReferences:(id)a4
{
  v6 = [(PUAssetActionManager *)self _assetsByAssetCollectionForAssetReferences:a4];
  v7 = [(PUAssetActionManager *)self actionPerformerForSimpleActionType:a3 onAssetsByAssetCollection:v6];

  return v7;
}

- (id)_assetsByAssetCollectionForAssetReferences:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 assetCollection];
    v6 = [v4 asset];
    v7 = v6;
    v8 = MEMORY[0x1E695E0F8];
    if (v5 && v6)
    {
      v29 = v6;
      v30 = v5;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v31[0] = v9;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v3;
    v10 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = v3;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v4);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 assetCollection];
          v16 = [v14 asset];
          if (v16)
          {
            v17 = v15 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            v18 = PXAssertGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v27 = v14;
              _os_log_error_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_ERROR, "Unable to map asset reference to assetsByAssetCollection: %@", buf, 0xCu);
            }
          }

          else
          {
            v19 = [v8 objectForKeyedSubscript:v15];
            if (v19)
            {
              v18 = v19;
              [v19 addObject:v16];
            }

            else
            {
              v18 = [MEMORY[0x1E695DF70] arrayWithObject:v16];
              [v8 setObject:v18 forKeyedSubscript:v15];
            }
          }
        }

        v11 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v11);
      v3 = v21;
    }
  }

  return v8;
}

@end