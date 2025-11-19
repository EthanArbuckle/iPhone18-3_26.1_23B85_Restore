@interface PXPasteboardAssetSettings
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXPasteboardAssetSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXPasteboardAssetSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXPasteboardAssetSettings *)self setFileURLEnabled:1];
  [(PXPasteboardAssetSettings *)self setImageDataEnabled:1];
  [(PXPasteboardAssetSettings *)self setSynchronousFullSizePreviewEnabled:0];
  [(PXPasteboardAssetSettings *)self setAlwaysUseDataProviderForObjectReference:0];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_47073 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_47073, &__block_literal_global_47074);
  }

  v3 = sharedInstance_sharedInstance_47075;

  return v3;
}

void __43__PXPasteboardAssetSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 dragDropSettings];
  v1 = sharedInstance_sharedInstance_47075;
  sharedInstance_sharedInstance_47075 = v0;
}

@end