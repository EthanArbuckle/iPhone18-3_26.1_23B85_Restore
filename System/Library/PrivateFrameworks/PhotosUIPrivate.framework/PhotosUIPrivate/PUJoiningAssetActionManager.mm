@interface PUJoiningAssetActionManager
- (BOOL)canPerformAction:(unint64_t)action onAllAssetsByAssetCollection:(id)collection;
- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (BOOL)shouldEnableActionType:(unint64_t)type onAllAssetsByAssetCollection:(id)collection;
- (BOOL)shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (PUJoiningAssetActionManager)init;
- (id)_actionManagerForAsset:(id)asset;
- (id)_actionManagerForAssets:(id)assets;
- (id)_actionManagerForAssetsByAssetCollection:(id)collection;
- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)collection withNewStillImageTime:(id *)time;
- (id)actionPerformerForEditingAudioMixMode:(id)mode onAsset:(id)asset;
- (id)actionPerformerForEditingPlaybackRate:(float)rate onAsset:(id)asset;
- (id)actionPerformerForEditingWithPendingEditsRequest:(id)request onAsset:(id)asset;
- (id)actionPerformerForEditingWithQuickCropContext:(id)context onAsset:(id)asset;
- (id)actionPerformerForSettingFavoriteTo:(BOOL)to onAssetsByAssetCollection:(id)collection;
- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetsByAssetCollection:(id)collection;
- (void)registerActionManager:(id)manager forAssetClass:(Class)class;
@end

@implementation PUJoiningAssetActionManager

- (id)actionPerformerForEditingWithPendingEditsRequest:(id)request onAsset:(id)asset
{
  assetCopy = asset;
  requestCopy = request;
  v8 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:assetCopy];
  v9 = [v8 actionPerformerForEditingWithPendingEditsRequest:requestCopy onAsset:assetCopy];

  return v9;
}

- (id)actionPerformerForEditingAudioMixMode:(id)mode onAsset:(id)asset
{
  assetCopy = asset;
  modeCopy = mode;
  v8 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:assetCopy];
  v9 = [v8 actionPerformerForEditingAudioMixMode:modeCopy onAsset:assetCopy];

  return v9;
}

- (id)actionPerformerForEditingPlaybackRate:(float)rate onAsset:(id)asset
{
  assetCopy = asset;
  v7 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:assetCopy];
  *&v8 = rate;
  v9 = [v7 actionPerformerForEditingPlaybackRate:assetCopy onAsset:v8];

  return v9;
}

- (id)actionPerformerForEditingWithQuickCropContext:(id)context onAsset:(id)asset
{
  assetCopy = asset;
  contextCopy = context;
  v8 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:assetCopy];
  v9 = [v8 actionPerformerForEditingWithQuickCropContext:contextCopy onAsset:assetCopy];

  return v9;
}

- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)collection withNewStillImageTime:(id *)time
{
  v39 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  allValues = [collectionCopy allValues];
  v8 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    timeCopy = time;
    v24 = collectionCopy;
    v10 = 0;
    v11 = *v34;
    obj = allValues;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          while (2)
          {
            v18 = 0;
            v19 = v10;
            do
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v20 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:*(*(&v29 + 1) + 8 * v18)];
              v10 = v20;
              if (v19 && v20 != v19)
              {

                v10 = 0;
                goto LABEL_17;
              }

              ++v18;
              v19 = v10;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);

    time = timeCopy;
    collectionCopy = v24;
    if (v10)
    {
      v27 = *&timeCopy->var0;
      var3 = timeCopy->var3;
      v21 = [v10 actionPerformerForDuplicatingAssetsByAssetCollection:v24 withNewStillImageTime:&v27];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v26.receiver = self;
  v26.super_class = PUJoiningAssetActionManager;
  v27 = *&time->var0;
  var3 = time->var3;
  v21 = [(PUAssetActionManager *)&v26 actionPerformerForDuplicatingAssetsByAssetCollection:collectionCopy withNewStillImageTime:&v27];
  v10 = 0;
LABEL_23:

  return v21;
}

- (id)actionPerformerForSettingFavoriteTo:(BOOL)to onAssetsByAssetCollection:(id)collection
{
  toCopy = to;
  v37 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  allValues = [collectionCopy allValues];
  v8 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = toCopy;
    v24 = collectionCopy;
    obj = allValues;
    v10 = 0;
    v11 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v28;
          while (2)
          {
            v18 = 0;
            v19 = v10;
            do
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v20 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:*(*(&v27 + 1) + 8 * v18)];
              v10 = v20;
              if (v19 && v20 != v19)
              {

                v10 = 0;
                goto LABEL_17;
              }

              ++v18;
              v19 = v10;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);

    collectionCopy = v24;
    toCopy = v23;
    if (v10)
    {
      v21 = [v10 actionPerformerForSettingFavoriteTo:v23 onAssetsByAssetCollection:v24];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v26.receiver = self;
  v26.super_class = PUJoiningAssetActionManager;
  v21 = [(PUAssetActionManager *)&v26 actionPerformerForSettingFavoriteTo:toCopy onAssetsByAssetCollection:collectionCopy];
  v10 = 0;
LABEL_23:

  return v21;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  allKeys = [collectionCopy allKeys];
  firstObject = [allKeys firstObject];

  v9 = [collectionCopy objectForKeyedSubscript:firstObject];
  firstObject2 = [v9 firstObject];
  v11 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:firstObject2];
  v12 = [v11 actionPerformerForSimpleActionType:type onAssetsByAssetCollection:collectionCopy];

  return v12;
}

- (BOOL)shouldEnableActionType:(unint64_t)type onAllAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__37270;
    v11[4] = __Block_byref_object_dispose__37271;
    v12 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__PUJoiningAssetActionManager_shouldEnableActionType_onAllAssetsByAssetCollection___block_invoke;
    v10[3] = &unk_1E7B78A08;
    v10[4] = self;
    v10[5] = &v13;
    v10[6] = v11;
    v10[7] = type;
    [collectionCopy enumerateKeysAndObjectsUsingBlock:v10];
    v7 = *(v14 + 24);
    _Block_object_dispose(v11, 8);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    _actionManagerForNoAsset = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
    v7 = [_actionManagerForNoAsset shouldEnableActionType:type onAllAssetsByAssetCollection:collectionCopy];
  }

  return v7 & 1;
}

void __83__PUJoiningAssetActionManager_shouldEnableActionType_onAllAssetsByAssetCollection___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      v14 = [*(a1 + 32) _actionManagerForAsset:{v13, v24}];
      v15 = v14;
      if (!v14)
      {
        v15 = *(a1 + 32);
      }

      v16 = v15;

      *(*(*(a1 + 40) + 8) + 24) = [v16 shouldEnableActionType:*(a1 + 56) onAsset:v13 inAssetCollection:v7];
      v17 = *(*(a1 + 40) + 8);
      if (*(v17 + 24) == 1)
      {
        v18 = *(*(*(a1 + 48) + 8) + 40);
        v19 = !v18 || v18 == v16;
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      *(v17 + 24) = v20;
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v16;
      v23 = v16;

      LODWORD(v22) = *(*(*(a1 + 40) + 8) + 24);
      if (v22 != 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (BOOL)canPerformAction:(unint64_t)action onAllAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__37270;
    v11[4] = __Block_byref_object_dispose__37271;
    v12 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PUJoiningAssetActionManager_canPerformAction_onAllAssetsByAssetCollection___block_invoke;
    v10[3] = &unk_1E7B78A08;
    v10[4] = self;
    v10[5] = &v13;
    v10[6] = v11;
    v10[7] = action;
    [collectionCopy enumerateKeysAndObjectsUsingBlock:v10];
    v7 = *(v14 + 24);
    _Block_object_dispose(v11, 8);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    _actionManagerForNoAsset = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
    v7 = [_actionManagerForNoAsset canPerformActionType:action onAsset:0 inAssetCollection:0];
  }

  return v7 & 1;
}

void __77__PUJoiningAssetActionManager_canPerformAction_onAllAssetsByAssetCollection___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      v14 = [*(a1 + 32) _actionManagerForAsset:{v13, v24}];
      v15 = v14;
      if (!v14)
      {
        v15 = *(a1 + 32);
      }

      v16 = v15;

      *(*(*(a1 + 40) + 8) + 24) = [v16 canPerformActionType:*(a1 + 56) onAsset:v13 inAssetCollection:v7];
      v17 = *(*(a1 + 40) + 8);
      if (*(v17 + 24) == 1)
      {
        v18 = *(*(*(a1 + 48) + 8) + 40);
        v19 = !v18 || v18 == v16;
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      *(v17 + 24) = v20;
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v16;
      v23 = v16;

      LODWORD(v22) = *(*(*(a1 + 40) + 8) + 24);
      if (v22 != 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (BOOL)shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCopy = asset;
  v10 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:assetCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 shouldEnableActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PUJoiningAssetActionManager;
    v12 = [(PUAssetActionManager *)&v15 shouldEnableActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
  }

  v13 = v12;

  return v13;
}

- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCopy = asset;
  v10 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:assetCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 canPerformActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PUJoiningAssetActionManager;
    v12 = [(PUAssetActionManager *)&v15 canPerformActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
  }

  v13 = v12;

  return v13;
}

- (id)_actionManagerForAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__37270;
    v15 = __Block_byref_object_dispose__37271;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PUJoiningAssetActionManager__actionManagerForAssetsByAssetCollection___block_invoke;
    v10[3] = &unk_1E7B789E0;
    v10[4] = self;
    v10[5] = &v11;
    [collectionCopy enumerateKeysAndObjectsUsingBlock:v10];
    v5 = v12[5];
    null = [MEMORY[0x1E695DFB0] null];
    LODWORD(v5) = [v5 isEqual:null];

    if (v5)
    {
      v7 = v12[5];
      v12[5] = 0;
    }

    _actionManagerForNoAsset = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    _actionManagerForNoAsset = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
  }

  return _actionManagerForNoAsset;
}

void __72__PUJoiningAssetActionManager__actionManagerForAssetsByAssetCollection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _actionManagerForAssets:?];
  v7 = *(*(a1 + 40) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9 == v6;
  }

  else
  {
    v11 = 1;
  }

  v15 = v6;
  if (v11)
  {
    objc_storeStrong(v8, v6);
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }
}

- (id)_actionManagerForAssets:(id)assets
{
  v19 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = assetsCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      _actionManagerForNoAsset = 0;
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        v11 = _actionManagerForNoAsset;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:*(*(&v14 + 1) + 8 * v10), v14];
          _actionManagerForNoAsset = v12;
          if (v11 && v11 != v12)
          {

            goto LABEL_13;
          }

          ++v10;
          v11 = _actionManagerForNoAsset;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_13:
      _actionManagerForNoAsset = 0;
    }
  }

  else
  {
    _actionManagerForNoAsset = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
  }

  return _actionManagerForNoAsset;
}

- (id)_actionManagerForAsset:(id)asset
{
  v20 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (assetCopy)
  {
    _actionManagerByClass = [(PUJoiningAssetActionManager *)self _actionManagerByClass];
    _actionManagerForNoAsset = [_actionManagerByClass objectForKey:objc_opt_class()];

    if (!_actionManagerForNoAsset)
    {
      _actionManagerByClass2 = [(PUJoiningAssetActionManager *)self _actionManagerByClass];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      keyEnumerator = [_actionManagerByClass2 keyEnumerator];
      v9 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if ([objc_opt_class() isSubclassOfClass:v13])
            {
              _actionManagerForNoAsset = [_actionManagerByClass2 objectForKey:v13];

              if (_actionManagerForNoAsset)
              {
                [_actionManagerByClass2 setObject:_actionManagerForNoAsset forKey:objc_opt_class()];
              }

              goto LABEL_15;
            }
          }

          v10 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      _actionManagerForNoAsset = 0;
LABEL_15:
    }
  }

  else
  {
    _actionManagerForNoAsset = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
  }

  return _actionManagerForNoAsset;
}

- (void)registerActionManager:(id)manager forAssetClass:(Class)class
{
  managerCopy = manager;
  v10 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUJoiningAssetActionManager.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"actionManager != nil"}];

    managerCopy = 0;
  }

  if (class)
  {
    _actionManagerByClass = [(PUJoiningAssetActionManager *)self _actionManagerByClass];
    [_actionManagerByClass setObject:v10 forKey:class];
  }

  else
  {
    [(PUJoiningAssetActionManager *)self _setActionManagerForNoAsset:managerCopy];
  }
}

- (PUJoiningAssetActionManager)init
{
  v6.receiver = self;
  v6.super_class = PUJoiningAssetActionManager;
  v2 = [(PUJoiningAssetActionManager *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    actionManagerByClass = v2->__actionManagerByClass;
    v2->__actionManagerByClass = strongToStrongObjectsMapTable;
  }

  return v2;
}

@end