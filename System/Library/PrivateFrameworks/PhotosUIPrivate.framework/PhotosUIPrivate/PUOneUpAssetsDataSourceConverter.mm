@interface PUOneUpAssetsDataSourceConverter
+ (id)defaultConverter;
- (BOOL)shouldReloadTileControllerFromAsset:(id)a3 toAsset:(id)a4 tileKind:(id)a5;
@end

@implementation PUOneUpAssetsDataSourceConverter

- (BOOL)shouldReloadTileControllerFromAsset:(id)a3 toAsset:(id)a4 tileKind:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (a5 == @"PUTileKindItemContent")
  {
    if ([v7 canPlayPhotoIris])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v7 isPhotoIrisPlaceholder];
    }

    if ([v8 canPlayPhotoIris])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v8 isPhotoIrisPlaceholder];
    }

    v12 = [v7 canPlayLoopingVideo];
    v13 = [v8 canPlayLoopingVideo];
    v14 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 px_isContentPreviewable];
    }

    else
    {
      v15 = 1;
    }

    v16 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 px_isContentPreviewable];
    }

    else
    {
      v17 = 1;
    }

    v18 = [v14 needsSensitivityProtection];
    v19 = [v16 needsSensitivityProtection];
    v20 = v12 ^ v13;
    if (v10 != v11)
    {
      v20 = 1;
    }

    v9 = v20 | v15 ^ v17 | v18 ^ v19;
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