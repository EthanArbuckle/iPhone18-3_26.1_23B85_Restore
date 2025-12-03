@interface PUPhotoKitAssetActionManager
+ (Class)actionPerformerClassForActionType:(unint64_t)type;
- (BOOL)_actionTypeIsSimple:(unint64_t)simple;
- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (BOOL)shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (id)_photoKitAssetsDataSource;
- (id)_photosDataSource;
- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)collection withNewStillImageTime:(id *)time;
- (id)actionPerformerForEditingAudioMixMode:(id)mode onAsset:(id)asset;
- (id)actionPerformerForEditingPlaybackRate:(float)rate onAsset:(id)asset;
- (id)actionPerformerForEditingWithPendingEditsRequest:(id)request onAsset:(id)asset;
- (id)actionPerformerForEditingWithQuickCropContext:(id)context onAsset:(id)asset;
- (id)actionPerformerForPastingAdjustmentsByAssetCollection:(id)collection;
- (id)actionPerformerForRevertingAdjustmentsByAssetCollection:(id)collection;
- (id)actionPerformerForSettingFavoriteTo:(BOOL)to onAssetsByAssetCollection:(id)collection;
- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetsByAssetCollection:(id)collection;
@end

@implementation PUPhotoKitAssetActionManager

- (BOOL)_actionTypeIsSimple:(unint64_t)simple
{
  if (simple - 1 < 0x28)
  {
    return 1;
  }

  result = 0;
  if (simple - 42 <= 0x19 && simple != 44)
  {
    return 1;
  }

  return result;
}

- (id)_photoKitAssetsDataSource
{
  delegate = [(PUAssetActionManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PUAssetActionManager *)self delegate];
    v6 = [delegate2 assetActionManagerCurrentAssetsDataSource:self];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_photosDataSource
{
  dataSourceManager = [(PUPhotoKitAssetActionManager *)self dataSourceManager];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    dataSourceManager2 = [(PUPhotoKitAssetActionManager *)self dataSourceManager];
    photosDataSource = [dataSourceManager2 photosDataSource];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = photosDataSource;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)actionPerformerForEditingWithPendingEditsRequest:(id)request onAsset:(id)asset
{
  v11[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  requestCopy = request;
  v7 = [PUPhotoKitEditActionPerformer alloc];
  v11[0] = assetCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(PUAssetActionPerformer *)v7 initWithActionType:15 assets:v8 orAssetsByAssetCollection:0];
  [(PUPhotoKitEditActionPerformer *)v9 setPendingEditsRequest:requestCopy];

  return v9;
}

- (id)actionPerformerForEditingAudioMixMode:(id)mode onAsset:(id)asset
{
  v13[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  modeCopy = mode;
  v7 = [PUPXPhotoKitAudioMixModeActionPerformer alloc];
  v8 = [(PXActionPerformer *)v7 initWithActionType:*MEMORY[0x1E69C4698]];
  [(PUPXPhotoKitAudioMixModeActionPerformer *)v8 setAudioMixMode:modeCopy];

  v9 = [PUPhotoKitAudioMixModePerformer alloc];
  v13[0] = assetCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [(PUPXPhotoKitActionPerformerAdapter *)v9 initWithActionType:30 assets:v10 orAssetsByAssetCollection:0 pxActionPerformer:v8];

  return v11;
}

- (id)actionPerformerForEditingPlaybackRate:(float)rate onAsset:(id)asset
{
  v13[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = [PUPXPhotoKitPlaybackRateActionPerformer alloc];
  v7 = [(PXActionPerformer *)v6 initWithActionType:*MEMORY[0x1E69C46C0]];
  *&v8 = rate;
  [(PUPXPhotoKitPlaybackRateActionPerformer *)v7 setPlaybackRate:v8];
  v9 = [PUPhotoKitPlaybackRatePerformer alloc];
  v13[0] = assetCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [(PUPXPhotoKitActionPerformerAdapter *)v9 initWithActionType:29 assets:v10 orAssetsByAssetCollection:0 pxActionPerformer:v7];

  return v11;
}

- (id)actionPerformerForEditingWithQuickCropContext:(id)context onAsset:(id)asset
{
  v11[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  contextCopy = context;
  v7 = [PUPhotoKitEditActionPerformer alloc];
  v11[0] = assetCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(PUAssetActionPerformer *)v7 initWithActionType:26 assets:v8 orAssetsByAssetCollection:0];
  [(PUPhotoKitEditActionPerformer *)v9 setQuickCropContext:contextCopy];

  return v9;
}

- (id)actionPerformerForRevertingAdjustmentsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [(PUPXPhotoKitActionPerformerAdapter *)[PUPhotoKitRevertAdjustmentsActionPerformer alloc] initWithActionType:22 assets:0 orAssetsByAssetCollection:collectionCopy];

  return v4;
}

- (id)actionPerformerForPastingAdjustmentsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [(PUPXPhotoKitActionPerformerAdapter *)[PUPhotoKitPasteAdjustmentsActionPerformer alloc] initWithActionType:21 assets:0 orAssetsByAssetCollection:collectionCopy];

  return v4;
}

- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)collection withNewStillImageTime:(id *)time
{
  collectionCopy = collection;
  v6 = [(PUAssetActionPerformer *)[PUPhotoKitDuplicateActionPerformer alloc] initWithActionType:41 assets:0 orAssetsByAssetCollection:collectionCopy];

  v8 = *time;
  [(PUPhotoKitDuplicateActionPerformer *)v6 setNewStillImageTime:&v8];

  return v6;
}

- (id)actionPerformerForSettingFavoriteTo:(BOOL)to onAssetsByAssetCollection:(id)collection
{
  toCopy = to;
  collectionCopy = collection;
  v7 = [(PUAssetActionPerformer *)[PUPhotoKitFavoriteActionPerformer alloc] initWithActionType:44 assets:0 orAssetsByAssetCollection:collectionCopy];

  [(PUPhotoKitFavoriteActionPerformer *)v7 setFavorite:toCopy];
  _photosDataSource = [(PUPhotoKitAssetActionManager *)self _photosDataSource];
  [(PUPhotoKitActionPerformer *)v7 setPhotosDataSource:_photosDataSource];

  return v7;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)type onAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (![(PUPhotoKitAssetActionManager *)self _actionTypeIsSimple:type])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"[self _actionTypeIsSimple:actionType]"}];
  }

  v8 = [PUPhotoKitAssetActionManager actionPerformerClassForActionType:type];
  if (v8)
  {
    v9 = [[v8 alloc] initWithActionType:type assets:0 orAssetsByAssetCollection:collectionCopy];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PUPhotoKitAssetActionManager;
    v9 = [(PUAssetActionManager *)&v24 actionPerformerForSimpleActionType:type onAssetsByAssetCollection:collectionCopy];
  }

  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    _photoKitAssetsDataSource = [(PUPhotoKitAssetActionManager *)self _photoKitAssetsDataSource];
    v12 = _photoKitAssetsDataSource;
    if (_photoKitAssetsDataSource)
    {
      photosDataSource = [_photoKitAssetsDataSource photosDataSource];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __93__PUPhotoKitAssetActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke;
      v21[3] = &unk_1E7B7BA28;
      v22 = photosDataSource;
      v23 = dictionary;
      v15 = dictionary;
      v16 = photosDataSource;
      [collectionCopy enumerateKeysAndObjectsUsingBlock:v21];
      [v10 setFetchResultsByAssetCollection:v15];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _photosDataSource = [(PUPhotoKitAssetActionManager *)self _photosDataSource];
    [v10 setPhotosDataSource:_photosDataSource];
  }

  actionManagerLog = [objc_opt_class() actionManagerLog];
  [v10 setActionPerformerLog:actionManagerLog];

  return v10;
}

void __93__PUPhotoKitAssetActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) sectionForAssetCollection:?];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 32) assetsInSection:v3];
    if (v4)
    {
      [*(a1 + 40) setObject:v4 forKeyedSubscript:v5];
    }
  }
}

- (BOOL)shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  if ([assetCopy needsSensitivityProtection])
  {
    v10 = 0;
  }

  else
  {
    v11 = [PUPhotoKitAssetActionManager actionPerformerClassForActionType:type];
    if (v11 && ((v12 = v11, !assetCopy) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
    {
      v13 = [(objc_class *)v12 shouldEnableOnAsset:assetCopy inAssetCollection:collectionCopy];
    }

    else
    {
      v15.receiver = self;
      v15.super_class = PUPhotoKitAssetActionManager;
      v13 = [(PUAssetActionManager *)&v15 shouldEnableActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
    }

    v10 = v13;
  }

  return v10;
}

- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  v10 = [PUPhotoKitAssetActionManager actionPerformerClassForActionType:type];
  if (v10 && ((v11 = v10, !assetCopy) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = collectionCopy;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(objc_class *)v11 canPerformOnAsset:assetCopy inAssetCollection:v13];
    v15 = v14;
    if (collectionCopy && v14)
    {
      v16 = [MEMORY[0x1E69C33E8] privacyControllerForCollection:v13];
      v17 = v16;
      if (v16)
      {
        v15 = [v16 isLocked] ^ 1;
      }

      else
      {
        v15 = 1;
      }
    }

    v19 = type == 43;
    enableNavigateToPhotos = (type != 43) & v15;
    if (v19 && v15)
    {
      enableNavigateToPhotos = [(PUPhotoKitAssetActionManager *)self enableNavigateToPhotos];
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PUPhotoKitAssetActionManager;
    enableNavigateToPhotos = [(PUAssetActionManager *)&v21 canPerformActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];
  }

  return enableNavigateToPhotos;
}

+ (Class)actionPerformerClassForActionType:(unint64_t)type
{
  v3 = 0;
  switch(type)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3FuLL:
    case 0x40uLL:
    case 0x42uLL:
      goto LABEL_4;
    case 0x11uLL:
      v5 = +[PUPhotoEditProtoSettings sharedInstance];
      [v5 showAutoEnhanceAction];

      goto LABEL_4;
    case 0x1BuLL:
    case 0x1CuLL:
      v4 = +[PUPhotoEditProtoSettings sharedInstance];
      [v4 showRotateAction];

LABEL_4:
      v3 = objc_opt_class();
      break;
    default:
      break;
  }

  return v3;
}

@end