@interface PUPXAssetActionManager
- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
- (BOOL)shouldEnableActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
- (PUPXAssetActionManager)init;
- (PUPXAssetActionManager)initWithUnderlyingActionManager:(id)a3;
- (id)_selectionSnapshotForAssetReferences:(id)a3;
- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)a3 withNewStillImageTime:(id *)a4;
- (id)actionPerformerForEditingAudioMixMode:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingPlaybackRate:(float)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingWithPendingEditsRequest:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingWithQuickCropContext:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForSettingFavoriteTo:(BOOL)a3 onAssetReferences:(id)a4;
- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetReferences:(id)a4;
- (id)barButtonItemForActionType:(unint64_t)a3;
- (id)localizedTitleForActionType:(unint64_t)a3;
@end

@implementation PUPXAssetActionManager

- (id)localizedTitleForActionType:(unint64_t)a3
{
  v5 = PXAssetActionTypeForPUAssetActionType(a3);
  if (v5 && [(PXAssetActionManager *)self->_underlyingActionManager canPerformActionType:v5])
  {
    v6 = [(PXAssetActionManager *)self->_underlyingActionManager localizedTitleForActionType:v5 useCase:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v8 = v7;
  if (!v6 && v7)
  {
    v6 = [v7 localizedTitleForActionType:a3];
  }

  return v6;
}

- (id)barButtonItemForActionType:(unint64_t)a3
{
  v5 = PXAssetActionTypeForPUAssetActionType(a3);
  if (v5 && [(PXAssetActionManager *)self->_underlyingActionManager canPerformActionType:v5])
  {
    v6 = [(PXAssetActionManager *)self->_underlyingActionManager barButtonItemForActionType:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v8 = v7;
  if (!v6 && v7)
  {
    v6 = [v7 barButtonItemForActionType:a3];
  }

  return v6;
}

- (id)actionPerformerForEditingWithPendingEditsRequest:(id)a3 onAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 actionPerformerForEditingWithPendingEditsRequest:v6 onAsset:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)actionPerformerForEditingAudioMixMode:(id)a3 onAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 actionPerformerForEditingAudioMixMode:v6 onAsset:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)actionPerformerForEditingPlaybackRate:(float)a3 onAsset:(id)a4
{
  v6 = a4;
  v7 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = v7;
  if (v7)
  {
    *&v8 = a3;
    v10 = [v7 actionPerformerForEditingPlaybackRate:v6 onAsset:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)actionPerformerForEditingWithQuickCropContext:(id)a3 onAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 actionPerformerForEditingWithQuickCropContext:v6 onAsset:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)a3 withNewStillImageTime:(id *)a4
{
  v6 = a3;
  v7 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v8 = v7;
  if (v7)
  {
    v11 = *&a4->var0;
    var3 = a4->var3;
    v9 = [v7 actionPerformerForDuplicatingAssetsByAssetCollection:v6 withNewStillImageTime:&v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)actionPerformerForSettingFavoriteTo:(BOOL)a3 onAssetReferences:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PUPXAssetActionManager *)self actionPerformerForSimpleActionType:44 onAssetReferences:v6];
  v8 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = v8;
  if (!v7 && v8)
  {
    v7 = [v8 actionPerformerForSettingFavoriteTo:v4 onAssetReferences:v6];
  }

  return v7;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetReferences:(id)a4
{
  v6 = a4;
  v7 = PXAssetActionTypeForPUAssetActionType(a3);
  if (v7)
  {
    v8 = [(PXAssetActionManager *)self->_underlyingActionManager objectReference];
    if ([v6 count] == 1)
    {
      v9 = [v6 firstObject];
      v10 = [v9 pxAssetReference];
      [(PXAssetActionManager *)self->_underlyingActionManager setObjectReference:v10];
    }

    v11 = [(PXAssetActionManager *)self->_underlyingActionManager actionPerformerForActionType:v7];
    if (v11)
    {
      if (a3 != 65)
      {
        v12 = [(PUPXAssetActionManager *)self _selectionSnapshotForAssetReferences:v6];
        [v11 setSelectionSnapshot:v12];
      }

      v13 = [[PUPXAssetActionPerformer alloc] initWithUnderlyingActionPerformer:v11];
    }

    else
    {
      v13 = 0;
    }

    [(PXAssetActionManager *)self->_underlyingActionManager setObjectReference:v8];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v15 = v14;
  if (!v13 && v14)
  {
    v13 = [v14 actionPerformerForSimpleActionType:a3 onAssetReferences:v6];
  }

  return v13;
}

- (BOOL)shouldEnableActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = PXAssetActionTypeForPUAssetActionType(a3);
  if (v10)
  {
    v11 = [(PXAssetActionManager *)self->_underlyingActionManager shouldEnableActionType:v10 onAsset:v8];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PUPXAssetActionManager *)self fallbackActionManager];
  v13 = v12;
  if ((v11 & 1) == 0 && v12)
  {
    v11 = [v12 shouldEnableActionType:a3 onAsset:v8 inAssetCollection:v9];
  }

  return v11;
}

- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = PXAssetActionTypeForPUAssetActionType(a3);
  if (v10 && v8 | v9)
  {
    v11 = [(PXAssetActionManager *)self->_underlyingActionManager objectReference];
    v12 = objc_alloc(MEMORY[0x1E69C4498]);
    v13 = *(MEMORY[0x1E69C48E8] + 16);
    v21[0] = *MEMORY[0x1E69C48E8];
    v21[1] = v13;
    v14 = [v12 initWithSectionObject:v9 itemObject:v8 subitemObject:0 indexPath:v21];
    [(PXAssetActionManager *)self->_underlyingActionManager setObjectReference:v14];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXAssetActionManager canPerformActionType:](self->_underlyingActionManager, "canPerformActionType:", v10)}];
    [(PXAssetActionManager *)self->_underlyingActionManager setObjectReference:v11];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(PUPXAssetActionManager *)self fallbackActionManager];
  if (!v15)
  {
    v17 = [(PUPXAssetActionManager *)self underlyingActionManager];
    v18 = [v17 isActionTypeAllowed:v10];

    if (v18)
    {
      if (v16)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "canPerformActionType:onAsset:inAssetCollection:", a3, v8, v9)}];
      }
    }
  }

  v19 = [v15 BOOLValue];

  return v19;
}

- (id)_selectionSnapshotForAssetReferences:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXAssetActionManager *)self->_underlyingActionManager selectionManager];
  v6 = [v5 selectionSnapshot];

  if (v4 && [v4 count])
  {
    v7 = [v6 dataSource];
    v8 = [MEMORY[0x1E69C4580] indexPathSet];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v19 = 0u;
          v20 = 0u;
          [v7 identifier];
          v15 = [v14 indexPath];
          PXSimpleIndexPathFromIndexPath();

          v18[0] = v19;
          v18[1] = v20;
          [v8 addIndexPath:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = [objc_alloc(MEMORY[0x1E69C45D8]) initWithDataSource:v7 selectedIndexPaths:v8];
  }

  else
  {
    v16 = v6;
  }

  return v16;
}

- (PUPXAssetActionManager)initWithUnderlyingActionManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUPXAssetActionManager;
  v6 = [(PUPXAssetActionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingActionManager, a3);
  }

  return v7;
}

- (PUPXAssetActionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPXAssetActionManager.m" lineNumber:132 description:{@"%s is not available as initializer", "-[PUPXAssetActionManager init]"}];

  abort();
}

@end