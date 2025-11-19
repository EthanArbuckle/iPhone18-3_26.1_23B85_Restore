@interface PUJoiningAssetActionManager
- (BOOL)canPerformAction:(unint64_t)a3 onAllAssetsByAssetCollection:(id)a4;
- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
- (BOOL)shouldEnableActionType:(unint64_t)a3 onAllAssetsByAssetCollection:(id)a4;
- (BOOL)shouldEnableActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
- (PUJoiningAssetActionManager)init;
- (id)_actionManagerForAsset:(id)a3;
- (id)_actionManagerForAssets:(id)a3;
- (id)_actionManagerForAssetsByAssetCollection:(id)a3;
- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)a3 withNewStillImageTime:(id *)a4;
- (id)actionPerformerForEditingAudioMixMode:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingPlaybackRate:(float)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingWithPendingEditsRequest:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingWithQuickCropContext:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForSettingFavoriteTo:(BOOL)a3 onAssetsByAssetCollection:(id)a4;
- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetsByAssetCollection:(id)a4;
- (void)registerActionManager:(id)a3 forAssetClass:(Class)a4;
@end

@implementation PUJoiningAssetActionManager

- (id)actionPerformerForEditingWithPendingEditsRequest:(id)a3 onAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:v6];
  v9 = [v8 actionPerformerForEditingWithPendingEditsRequest:v7 onAsset:v6];

  return v9;
}

- (id)actionPerformerForEditingAudioMixMode:(id)a3 onAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:v6];
  v9 = [v8 actionPerformerForEditingAudioMixMode:v7 onAsset:v6];

  return v9;
}

- (id)actionPerformerForEditingPlaybackRate:(float)a3 onAsset:(id)a4
{
  v6 = a4;
  v7 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:v6];
  *&v8 = a3;
  v9 = [v7 actionPerformerForEditingPlaybackRate:v6 onAsset:v8];

  return v9;
}

- (id)actionPerformerForEditingWithQuickCropContext:(id)a3 onAsset:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:v6];
  v9 = [v8 actionPerformerForEditingWithQuickCropContext:v7 onAsset:v6];

  return v9;
}

- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)a3 withNewStillImageTime:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v6 allValues];
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = a4;
    v24 = v6;
    v10 = 0;
    v11 = *v34;
    obj = v7;
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

    a4 = v23;
    v6 = v24;
    if (v10)
    {
      v27 = *&v23->var0;
      var3 = v23->var3;
      v21 = [v10 actionPerformerForDuplicatingAssetsByAssetCollection:v24 withNewStillImageTime:&v27];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v26.receiver = self;
  v26.super_class = PUJoiningAssetActionManager;
  v27 = *&a4->var0;
  var3 = a4->var3;
  v21 = [(PUAssetActionManager *)&v26 actionPerformerForDuplicatingAssetsByAssetCollection:v6 withNewStillImageTime:&v27];
  v10 = 0;
LABEL_23:

  return v21;
}

- (id)actionPerformerForSettingFavoriteTo:(BOOL)a3 onAssetsByAssetCollection:(id)a4
{
  v4 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 allValues];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = v4;
    v24 = v6;
    obj = v7;
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

    v6 = v24;
    v4 = v23;
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
  v21 = [(PUAssetActionManager *)&v26 actionPerformerForSettingFavoriteTo:v4 onAssetsByAssetCollection:v6];
  v10 = 0;
LABEL_23:

  return v21;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetsByAssetCollection:(id)a4
{
  v6 = a4;
  v7 = [v6 allKeys];
  v8 = [v7 firstObject];

  v9 = [v6 objectForKeyedSubscript:v8];
  v10 = [v9 firstObject];
  v11 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:v10];
  v12 = [v11 actionPerformerForSimpleActionType:a3 onAssetsByAssetCollection:v6];

  return v12;
}

- (BOOL)shouldEnableActionType:(unint64_t)a3 onAllAssetsByAssetCollection:(id)a4
{
  v6 = a4;
  if ([v6 count])
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
    v10[7] = a3;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
    v7 = *(v14 + 24);
    _Block_object_dispose(v11, 8);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
    v7 = [v8 shouldEnableActionType:a3 onAllAssetsByAssetCollection:v6];
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

- (BOOL)canPerformAction:(unint64_t)a3 onAllAssetsByAssetCollection:(id)a4
{
  v6 = a4;
  if ([v6 count])
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
    v10[7] = a3;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
    v7 = *(v14 + 24);
    _Block_object_dispose(v11, 8);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
    v7 = [v8 canPerformActionType:a3 onAsset:0 inAssetCollection:0];
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

- (BOOL)shouldEnableActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 shouldEnableActionType:a3 onAsset:v9 inAssetCollection:v8];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PUJoiningAssetActionManager;
    v12 = [(PUAssetActionManager *)&v15 shouldEnableActionType:a3 onAsset:v9 inAssetCollection:v8];
  }

  v13 = v12;

  return v13;
}

- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 canPerformActionType:a3 onAsset:v9 inAssetCollection:v8];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PUJoiningAssetActionManager;
    v12 = [(PUAssetActionManager *)&v15 canPerformActionType:a3 onAsset:v9 inAssetCollection:v8];
  }

  v13 = v12;

  return v13;
}

- (id)_actionManagerForAssetsByAssetCollection:(id)a3
{
  v4 = a3;
  if ([v4 count])
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
    [v4 enumerateKeysAndObjectsUsingBlock:v10];
    v5 = v12[5];
    v6 = [MEMORY[0x1E695DFB0] null];
    LODWORD(v5) = [v5 isEqual:v6];

    if (v5)
    {
      v7 = v12[5];
      v12[5] = 0;
    }

    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
  }

  return v8;
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

- (id)_actionManagerForAssets:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [(PUJoiningAssetActionManager *)self _actionManagerForAsset:*(*(&v14 + 1) + 8 * v10), v14];
          v8 = v12;
          if (v11 && v11 != v12)
          {

            goto LABEL_13;
          }

          ++v10;
          v11 = v8;
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
      v8 = 0;
    }
  }

  else
  {
    v8 = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
  }

  return v8;
}

- (id)_actionManagerForAsset:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PUJoiningAssetActionManager *)self _actionManagerByClass];
    v6 = [v5 objectForKey:objc_opt_class()];

    if (!v6)
    {
      v7 = [(PUJoiningAssetActionManager *)self _actionManagerByClass];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v7 keyEnumerator];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if ([objc_opt_class() isSubclassOfClass:v13])
            {
              v6 = [v7 objectForKey:v13];

              if (v6)
              {
                [v7 setObject:v6 forKey:objc_opt_class()];
              }

              goto LABEL_15;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_15:
    }
  }

  else
  {
    v6 = [(PUJoiningAssetActionManager *)self _actionManagerForNoAsset];
  }

  return v6;
}

- (void)registerActionManager:(id)a3 forAssetClass:(Class)a4
{
  v7 = a3;
  v10 = v7;
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUJoiningAssetActionManager.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"actionManager != nil"}];

    v7 = 0;
  }

  if (a4)
  {
    v8 = [(PUJoiningAssetActionManager *)self _actionManagerByClass];
    [v8 setObject:v10 forKey:a4];
  }

  else
  {
    [(PUJoiningAssetActionManager *)self _setActionManagerForNoAsset:v7];
  }
}

- (PUJoiningAssetActionManager)init
{
  v6.receiver = self;
  v6.super_class = PUJoiningAssetActionManager;
  v2 = [(PUJoiningAssetActionManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    actionManagerByClass = v2->__actionManagerByClass;
    v2->__actionManagerByClass = v3;
  }

  return v2;
}

@end