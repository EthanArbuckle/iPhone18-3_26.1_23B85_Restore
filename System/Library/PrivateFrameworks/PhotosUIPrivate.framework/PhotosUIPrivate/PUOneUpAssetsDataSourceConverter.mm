@interface PUOneUpAssetsDataSourceConverter
+ (id)defaultConverter;
- (BOOL)shouldReloadTileControllerFromAsset:(id)asset toAsset:(id)toAsset tileKind:(id)kind;
@end

@implementation PUOneUpAssetsDataSourceConverter

- (BOOL)shouldReloadTileControllerFromAsset:(id)asset toAsset:(id)toAsset tileKind:(id)kind
{
  assetCopy = asset;
  toAssetCopy = toAsset;
  if (kind == @"PUTileKindItemContent")
  {
    if ([assetCopy canPlayPhotoIris])
    {
      isPhotoIrisPlaceholder = 1;
    }

    else
    {
      isPhotoIrisPlaceholder = [assetCopy isPhotoIrisPlaceholder];
    }

    if ([toAssetCopy canPlayPhotoIris])
    {
      isPhotoIrisPlaceholder2 = 1;
    }

    else
    {
      isPhotoIrisPlaceholder2 = [toAssetCopy isPhotoIrisPlaceholder];
    }

    canPlayLoopingVideo = [assetCopy canPlayLoopingVideo];
    canPlayLoopingVideo2 = [toAssetCopy canPlayLoopingVideo];
    v14 = assetCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      px_isContentPreviewable = [v14 px_isContentPreviewable];
    }

    else
    {
      px_isContentPreviewable = 1;
    }

    v16 = toAssetCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      px_isContentPreviewable2 = [v16 px_isContentPreviewable];
    }

    else
    {
      px_isContentPreviewable2 = 1;
    }

    needsSensitivityProtection = [v14 needsSensitivityProtection];
    needsSensitivityProtection2 = [v16 needsSensitivityProtection];
    v20 = canPlayLoopingVideo ^ canPlayLoopingVideo2;
    if (isPhotoIrisPlaceholder != isPhotoIrisPlaceholder2)
    {
      v20 = 1;
    }

    v9 = v20 | px_isContentPreviewable ^ px_isContentPreviewable2 | needsSensitivityProtection ^ needsSensitivityProtection2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)defaultConverter
{
  if (defaultConverter_onceToken_42762 != -1)
  {
    dispatch_once(&defaultConverter_onceToken_42762, &__block_literal_global_42763);
  }

  v3 = defaultConverter_defaultConverter_42764;

  return v3;
}

uint64_t __52__PUOneUpAssetsDataSourceConverter_defaultConverter__block_invoke()
{
  v0 = objc_alloc_init(PUOneUpAssetsDataSourceConverter);
  v1 = defaultConverter_defaultConverter_42764;
  defaultConverter_defaultConverter_42764 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end