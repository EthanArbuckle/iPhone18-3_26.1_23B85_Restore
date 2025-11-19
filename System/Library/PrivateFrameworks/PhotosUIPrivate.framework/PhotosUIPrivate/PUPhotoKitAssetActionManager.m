@interface PUPhotoKitAssetActionManager
+ (Class)actionPerformerClassForActionType:(unint64_t)a3;
- (BOOL)_actionTypeIsSimple:(unint64_t)a3;
- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
- (BOOL)shouldEnableActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
- (id)_photoKitAssetsDataSource;
- (id)_photosDataSource;
- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)a3 withNewStillImageTime:(id *)a4;
- (id)actionPerformerForEditingAudioMixMode:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingPlaybackRate:(float)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingWithPendingEditsRequest:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForEditingWithQuickCropContext:(id)a3 onAsset:(id)a4;
- (id)actionPerformerForPastingAdjustmentsByAssetCollection:(id)a3;
- (id)actionPerformerForRevertingAdjustmentsByAssetCollection:(id)a3;
- (id)actionPerformerForSettingFavoriteTo:(BOOL)a3 onAssetsByAssetCollection:(id)a4;
- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetsByAssetCollection:(id)a4;
@end

@implementation PUPhotoKitAssetActionManager

- (BOOL)_actionTypeIsSimple:(unint64_t)a3
{
  if (a3 - 1 < 0x28)
  {
    return 1;
  }

  result = 0;
  if (a3 - 42 <= 0x19 && a3 != 44)
  {
    return 1;
  }

  return result;
}

- (id)_photoKitAssetsDataSource
{
  v3 = [(PUAssetActionManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PUAssetActionManager *)self delegate];
    v6 = [v5 assetActionManagerCurrentAssetsDataSource:self];

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
  v3 = [(PUPhotoKitAssetActionManager *)self dataSourceManager];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PUPhotoKitAssetActionManager *)self dataSourceManager];
    v6 = [v5 photosDataSource];

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

- (id)actionPerformerForEditingWithPendingEditsRequest:(id)a3 onAsset:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [PUPhotoKitEditActionPerformer alloc];
  v11[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(PUAssetActionPerformer *)v7 initWithActionType:15 assets:v8 orAssetsByAssetCollection:0];
  [(PUPhotoKitEditActionPerformer *)v9 setPendingEditsRequest:v6];

  return v9;
}

- (id)actionPerformerForEditingAudioMixMode:(id)a3 onAsset:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [PUPXPhotoKitAudioMixModeActionPerformer alloc];
  v8 = [(PXActionPerformer *)v7 initWithActionType:*MEMORY[0x1E69C4698]];
  [(PUPXPhotoKitAudioMixModeActionPerformer *)v8 setAudioMixMode:v6];

  v9 = [PUPhotoKitAudioMixModePerformer alloc];
  v13[0] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [(PUPXPhotoKitActionPerformerAdapter *)v9 initWithActionType:30 assets:v10 orAssetsByAssetCollection:0 pxActionPerformer:v8];

  return v11;
}

- (id)actionPerformerForEditingPlaybackRate:(float)a3 onAsset:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [PUPXPhotoKitPlaybackRateActionPerformer alloc];
  v7 = [(PXActionPerformer *)v6 initWithActionType:*MEMORY[0x1E69C46C0]];
  *&v8 = a3;
  [(PUPXPhotoKitPlaybackRateActionPerformer *)v7 setPlaybackRate:v8];
  v9 = [PUPhotoKitPlaybackRatePerformer alloc];
  v13[0] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [(PUPXPhotoKitActionPerformerAdapter *)v9 initWithActionType:29 assets:v10 orAssetsByAssetCollection:0 pxActionPerformer:v7];

  return v11;
}

- (id)actionPerformerForEditingWithQuickCropContext:(id)a3 onAsset:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [PUPhotoKitEditActionPerformer alloc];
  v11[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(PUAssetActionPerformer *)v7 initWithActionType:26 assets:v8 orAssetsByAssetCollection:0];
  [(PUPhotoKitEditActionPerformer *)v9 setQuickCropContext:v6];

  return v9;
}

- (id)actionPerformerForRevertingAdjustmentsByAssetCollection:(id)a3
{
  v3 = a3;
  v4 = [(PUPXPhotoKitActionPerformerAdapter *)[PUPhotoKitRevertAdjustmentsActionPerformer alloc] initWithActionType:22 assets:0 orAssetsByAssetCollection:v3];

  return v4;
}

- (id)actionPerformerForPastingAdjustmentsByAssetCollection:(id)a3
{
  v3 = a3;
  v4 = [(PUPXPhotoKitActionPerformerAdapter *)[PUPhotoKitPasteAdjustmentsActionPerformer alloc] initWithActionType:21 assets:0 orAssetsByAssetCollection:v3];

  return v4;
}

- (id)actionPerformerForDuplicatingAssetsByAssetCollection:(id)a3 withNewStillImageTime:(id *)a4
{
  v5 = a3;
  v6 = [(PUAssetActionPerformer *)[PUPhotoKitDuplicateActionPerformer alloc] initWithActionType:41 assets:0 orAssetsByAssetCollection:v5];

  v8 = *a4;
  [(PUPhotoKitDuplicateActionPerformer *)v6 setNewStillImageTime:&v8];

  return v6;
}

- (id)actionPerformerForSettingFavoriteTo:(BOOL)a3 onAssetsByAssetCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PUAssetActionPerformer *)[PUPhotoKitFavoriteActionPerformer alloc] initWithActionType:44 assets:0 orAssetsByAssetCollection:v6];

  [(PUPhotoKitFavoriteActionPerformer *)v7 setFavorite:v4];
  v8 = [(PUPhotoKitAssetActionManager *)self _photosDataSource];
  [(PUPhotoKitActionPerformer *)v7 setPhotosDataSource:v8];

  return v7;
}

- (id)actionPerformerForSimpleActionType:(unint64_t)a3 onAssetsByAssetCollection:(id)a4
{
  v7 = a4;
  if (![(PUPhotoKitAssetActionManager *)self _actionTypeIsSimple:a3])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"[self _actionTypeIsSimple:actionType]"}];
  }

  v8 = [PUPhotoKitAssetActionManager actionPerformerClassForActionType:a3];
  if (v8)
  {
    v9 = [[v8 alloc] initWithActionType:a3 assets:0 orAssetsByAssetCollection:v7];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = PUPhotoKitAssetActionManager;
    v9 = [(PUAssetActionManager *)&v24 actionPerformerForSimpleActionType:a3 onAssetsByAssetCollection:v7];
  }

  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(PUPhotoKitAssetActionManager *)self _photoKitAssetsDataSource];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 photosDataSource];
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __93__PUPhotoKitAssetActionManager_actionPerformerForSimpleActionType_onAssetsByAssetCollection___block_invoke;
      v21[3] = &unk_1E7B7BA28;
      v22 = v13;
      v23 = v14;
      v15 = v14;
      v16 = v13;
      [v7 enumerateKeysAndObjectsUsingBlock:v21];
      [v10 setFetchResultsByAssetCollection:v15];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(PUPhotoKitAssetActionManager *)self _photosDataSource];
    [v10 setPhotosDataSource:v17];
  }

  v18 = [objc_opt_class() actionManagerLog];
  [v10 setActionPerformerLog:v18];

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

- (BOOL)shouldEnableActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 needsSensitivityProtection])
  {
    v10 = 0;
  }

  else
  {
    v11 = [PUPhotoKitAssetActionManager actionPerformerClassForActionType:a3];
    if (v11 && ((v12 = v11, !v8) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
    {
      v13 = [(objc_class *)v12 shouldEnableOnAsset:v8 inAssetCollection:v9];
    }

    else
    {
      v15.receiver = self;
      v15.super_class = PUPhotoKitAssetActionManager;
      v13 = [(PUAssetActionManager *)&v15 shouldEnableActionType:a3 onAsset:v8 inAssetCollection:v9];
    }

    v10 = v13;
  }

  return v10;
}

- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [PUPhotoKitAssetActionManager actionPerformerClassForActionType:a3];
  if (v10 && ((v11 = v10, !v8) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(objc_class *)v11 canPerformOnAsset:v8 inAssetCollection:v13];
    v15 = v14;
    if (v9 && v14)
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

    v19 = a3 == 43;
    v18 = (a3 != 43) & v15;
    if (v19 && v15)
    {
      v18 = [(PUPhotoKitAssetActionManager *)self enableNavigateToPhotos];
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PUPhotoKitAssetActionManager;
    v18 = [(PUAssetActionManager *)&v21 canPerformActionType:a3 onAsset:v8 inAssetCollection:v9];
  }

  return v18;
}

+ (Class)actionPerformerClassForActionType:(unint64_t)a3
{
  v3 = 0;
  switch(a3)
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