@interface PUPXAssetActionManager
- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (BOOL)shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (PUPXAssetActionManager)init;
- (PUPXAssetActionManager)initWithUnderlyingActionManager:(id)manager;
- (id)_selectionSnapshotForAssetReferences:(id)references;
- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)collection withNewStillImageTime:(id *)time;
- (id)actionPerformerForEditingAudioMixMode:(id)mode onAsset:(id)asset;
- (id)actionPerformerForEditingPlaybackRate:(float)rate onAsset:(id)asset;
- (id)actionPerformerForEditingWithPendingEditsRequest:(id)request onAsset:(id)asset;
- (id)actionPerformerForEditingWithQuickCropContext:(id)context onAsset:(id)asset;
- (id)actionPerformerForSettingFavoriteTo:(BOOL)to onAssetReferences:(id)references;
- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetReferences:(id)references;
- (id)barButtonItemForActionType:(unint64_t)type;
- (id)localizedTitleForActionType:(unint64_t)type;
@end

@implementation PUPXAssetActionManager

- (id)localizedTitleForActionType:(unint64_t)type
{
  v5 = PXAssetActionTypeForPUAssetActionType(type);
  if (v5 && [(PXAssetActionManager *)self->_underlyingActionManager canPerformActionType:v5])
  {
    v6 = [(PXAssetActionManager *)self->_underlyingActionManager localizedTitleForActionType:v5 useCase:1];
  }

  else
  {
    v6 = 0;
  }

  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v8 = fallbackActionManager;
  if (!v6 && fallbackActionManager)
  {
    v6 = [fallbackActionManager localizedTitleForActionType:type];
  }

  return v6;
}

- (id)barButtonItemForActionType:(unint64_t)type
{
  v5 = PXAssetActionTypeForPUAssetActionType(type);
  if (v5 && [(PXAssetActionManager *)self->_underlyingActionManager canPerformActionType:v5])
  {
    v6 = [(PXAssetActionManager *)self->_underlyingActionManager barButtonItemForActionType:v5];
  }

  else
  {
    v6 = 0;
  }

  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v8 = fallbackActionManager;
  if (!v6 && fallbackActionManager)
  {
    v6 = [fallbackActionManager barButtonItemForActionType:type];
  }

  return v6;
}

- (id)actionPerformerForEditingWithPendingEditsRequest:(id)request onAsset:(id)asset
{
  requestCopy = request;
  assetCopy = asset;
  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = fallbackActionManager;
  if (fallbackActionManager)
  {
    v10 = [fallbackActionManager actionPerformerForEditingWithPendingEditsRequest:requestCopy onAsset:assetCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)actionPerformerForEditingAudioMixMode:(id)mode onAsset:(id)asset
{
  modeCopy = mode;
  assetCopy = asset;
  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = fallbackActionManager;
  if (fallbackActionManager)
  {
    v10 = [fallbackActionManager actionPerformerForEditingAudioMixMode:modeCopy onAsset:assetCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)actionPerformerForEditingPlaybackRate:(float)rate onAsset:(id)asset
{
  assetCopy = asset;
  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = fallbackActionManager;
  if (fallbackActionManager)
  {
    *&v8 = rate;
    v10 = [fallbackActionManager actionPerformerForEditingPlaybackRate:assetCopy onAsset:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)actionPerformerForEditingWithQuickCropContext:(id)context onAsset:(id)asset
{
  contextCopy = context;
  assetCopy = asset;
  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = fallbackActionManager;
  if (fallbackActionManager)
  {
    v10 = [fallbackActionManager actionPerformerForEditingWithQuickCropContext:contextCopy onAsset:assetCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)collection withNewStillImageTime:(id *)time
{
  collectionCopy = collection;
  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v8 = fallbackActionManager;
  if (fallbackActionManager)
  {
    v11 = *&time->var0;
    var3 = time->var3;
    v9 = [fallbackActionManager actionPerformerForDuplicatingAssetsByAssetCollection:collectionCopy withNewStillImageTime:&v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)actionPerformerForSettingFavoriteTo:(BOOL)to onAssetReferences:(id)references
{
  toCopy = to;
  referencesCopy = references;
  v7 = [(PUPXAssetActionManager *)self actionPerformerForSimpleActionType:44 onAssetReferences:referencesCopy];
  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v9 = fallbackActionManager;
  if (!v7 && fallbackActionManager)
  {
    v7 = [fallbackActionManager actionPerformerForSettingFavoriteTo:toCopy onAssetReferences:referencesCopy];
  }

  return v7;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetReferences:(id)references
{
  referencesCopy = references;
  v7 = PXAssetActionTypeForPUAssetActionType(type);
  if (v7)
  {
    objectReference = [(PXAssetActionManager *)self->_underlyingActionManager objectReference];
    if ([referencesCopy count] == 1)
    {
      firstObject = [referencesCopy firstObject];
      pxAssetReference = [firstObject pxAssetReference];
      [(PXAssetActionManager *)self->_underlyingActionManager setObjectReference:pxAssetReference];
    }

    v11 = [(PXAssetActionManager *)self->_underlyingActionManager actionPerformerForActionType:v7];
    if (v11)
    {
      if (type != 65)
      {
        v12 = [(PUPXAssetActionManager *)self _selectionSnapshotForAssetReferences:referencesCopy];
        [v11 setSelectionSnapshot:v12];
      }

      v13 = [[PUPXAssetActionPerformer alloc] initWithUnderlyingActionPerformer:v11];
    }

    else
    {
      v13 = 0;
    }

    [(PXAssetActionManager *)self->_underlyingActionManager setObjectReference:objectReference];
  }

  else
  {
    v13 = 0;
  }

  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v15 = fallbackActionManager;
  if (!v13 && fallbackActionManager)
  {
    v13 = [fallbackActionManager actionPerformerForSimpleActionType:type onAssetReferences:referencesCopy];
  }

  return v13;
}

- (BOOL)shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  v10 = PXAssetActionTypeForPUAssetActionType(type);
  if (v10)
  {
    v11 = [(PXAssetActionManager *)self->_underlyingActionManager shouldEnableActionType:v10 onAsset:assetCopy];
  }

  else
  {
    v11 = 0;
  }

  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  v13 = fallbackActionManager;
  if ((v11 & 1) == 0 && fallbackActionManager)
  {
    v11 = [fallbackActionManager shouldEnableActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
  }

  return v11;
}

- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  v10 = PXAssetActionTypeForPUAssetActionType(type);
  if (v10 && assetCopy | collectionCopy)
  {
    objectReference = [(PXAssetActionManager *)self->_underlyingActionManager objectReference];
    v12 = objc_alloc(MEMORY[0x1E69C4498]);
    v13 = *(MEMORY[0x1E69C48E8] + 16);
    v21[0] = *MEMORY[0x1E69C48E8];
    v21[1] = v13;
    v14 = [v12 initWithSectionObject:collectionCopy itemObject:assetCopy subitemObject:0 indexPath:v21];
    [(PXAssetActionManager *)self->_underlyingActionManager setObjectReference:v14];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXAssetActionManager canPerformActionType:](self->_underlyingActionManager, "canPerformActionType:", v10)}];
    [(PXAssetActionManager *)self->_underlyingActionManager setObjectReference:objectReference];
  }

  else
  {
    v15 = 0;
  }

  fallbackActionManager = [(PUPXAssetActionManager *)self fallbackActionManager];
  if (!v15)
  {
    underlyingActionManager = [(PUPXAssetActionManager *)self underlyingActionManager];
    v18 = [underlyingActionManager isActionTypeAllowed:v10];

    if (v18)
    {
      if (fallbackActionManager)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(fallbackActionManager, "canPerformActionType:onAsset:inAssetCollection:", type, assetCopy, collectionCopy)}];
      }
    }
  }

  bOOLValue = [v15 BOOLValue];

  return bOOLValue;
}

- (id)_selectionSnapshotForAssetReferences:(id)references
{
  v26 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  selectionManager = [(PXAssetActionManager *)self->_underlyingActionManager selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if (referencesCopy && [referencesCopy count])
  {
    dataSource = [selectionSnapshot dataSource];
    indexPathSet = [MEMORY[0x1E69C4580] indexPathSet];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = referencesCopy;
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
          [dataSource identifier];
          indexPath = [v14 indexPath];
          PXSimpleIndexPathFromIndexPath();

          v18[0] = v19;
          v18[1] = v20;
          [indexPathSet addIndexPath:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = [objc_alloc(MEMORY[0x1E69C45D8]) initWithDataSource:dataSource selectedIndexPaths:indexPathSet];
  }

  else
  {
    v16 = selectionSnapshot;
  }

  return v16;
}

- (PUPXAssetActionManager)initWithUnderlyingActionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PUPXAssetActionManager;
  v6 = [(PUPXAssetActionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingActionManager, manager);
  }

  return v7;
}

- (PUPXAssetActionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXAssetActionManager.m" lineNumber:132 description:{@"%s is not available as initializer", "-[PUPXAssetActionManager init]"}];

  abort();
}

@end