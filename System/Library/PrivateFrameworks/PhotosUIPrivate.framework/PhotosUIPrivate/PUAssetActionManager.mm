@interface PUAssetActionManager
+ (OS_os_log)actionManagerLog;
+ (id)_unlockDeviceHandlerWithActionType;
+ (void)setUnlockDeviceHandlerWithActionType:(id)type;
- (BOOL)canPerformAction:(unint64_t)action onAllAssetReferences:(id)references;
- (BOOL)canPerformAction:(unint64_t)action onAllAssetsByAssetCollection:(id)collection;
- (BOOL)shouldEnableActionType:(unint64_t)type onAllAssetsByAssetCollection:(id)collection;
- (PUAssetActionManagerDelegate)delegate;
- (id)_assetsByAssetCollectionForAssetReferences:(id)references;
- (id)actionPerformerForSettingFavoriteTo:(BOOL)to onAssetReferences:(id)references;
- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetReferences:(id)references;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _Block_copy(_sharedUnlockDeviceHandlerWithActionType);
  objc_sync_exit(selfCopy);

  v4 = _Block_copy(v3);

  return v4;
}

+ (void)setUnlockDeviceHandlerWithActionType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"unlockDeviceHandlerWithActionType != nil"}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [typeCopy copy];
  v7 = _sharedUnlockDeviceHandlerWithActionType;
  _sharedUnlockDeviceHandlerWithActionType = v6;

  objc_sync_exit(selfCopy);
}

- (PUAssetActionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldEnableActionType:(unint64_t)type onAllAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy count])
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
    v9[6] = type;
    [collectionCopy enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = [(PUAssetActionManager *)self shouldEnableActionType:type onAsset:0 inAssetCollection:0];
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

- (BOOL)canPerformAction:(unint64_t)action onAllAssetReferences:(id)references
{
  v6 = [(PUAssetActionManager *)self _assetsByAssetCollectionForAssetReferences:references];
  LOBYTE(action) = [(PUAssetActionManager *)self canPerformAction:action onAllAssetsByAssetCollection:v6];

  return action;
}

- (BOOL)canPerformAction:(unint64_t)action onAllAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy count])
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
    v9[6] = action;
    [collectionCopy enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = [(PUAssetActionManager *)self canPerformActionType:action onAsset:0 inAssetCollection:0];
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

- (id)actionPerformerForSettingFavoriteTo:(BOOL)to onAssetReferences:(id)references
{
  toCopy = to;
  v6 = [(PUAssetActionManager *)self _assetsByAssetCollectionForAssetReferences:references];
  v7 = [(PUAssetActionManager *)self actionPerformerForSettingFavoriteTo:toCopy onAssetsByAssetCollection:v6];

  return v7;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetReferences:(id)references
{
  v6 = [(PUAssetActionManager *)self _assetsByAssetCollectionForAssetReferences:references];
  v7 = [(PUAssetActionManager *)self actionPerformerForSimpleActionType:type onAssetsByAssetCollection:v6];

  return v7;
}

- (id)_assetsByAssetCollectionForAssetReferences:(id)references
{
  v31[1] = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  if ([referencesCopy count] == 1)
  {
    firstObject = [referencesCopy firstObject];
    assetCollection = [firstObject assetCollection];
    asset = [firstObject asset];
    v7 = asset;
    dictionary = MEMORY[0x1E695E0F8];
    if (assetCollection && asset)
    {
      v29 = asset;
      v30 = assetCollection;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v31[0] = v9;
      dictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    firstObject = referencesCopy;
    v10 = [firstObject countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = referencesCopy;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(firstObject);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          assetCollection2 = [v14 assetCollection];
          asset2 = [v14 asset];
          if (asset2)
          {
            v17 = assetCollection2 == 0;
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
            v19 = [dictionary objectForKeyedSubscript:assetCollection2];
            if (v19)
            {
              v18 = v19;
              [v19 addObject:asset2];
            }

            else
            {
              v18 = [MEMORY[0x1E695DF70] arrayWithObject:asset2];
              [dictionary setObject:v18 forKeyedSubscript:assetCollection2];
            }
          }
        }

        v11 = [firstObject countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v11);
      referencesCopy = v21;
    }
  }

  return dictionary;
}

@end