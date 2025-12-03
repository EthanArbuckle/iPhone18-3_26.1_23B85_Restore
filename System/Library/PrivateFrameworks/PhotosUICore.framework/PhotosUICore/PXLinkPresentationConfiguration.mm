@interface PXLinkPresentationConfiguration
- (PXLinkPresentationConfiguration)initWithKeyAsset:(id)asset;
@end

@implementation PXLinkPresentationConfiguration

- (PXLinkPresentationConfiguration)initWithKeyAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLinkPresentationActivityItemProvider.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"keyAsset"}];
  }

  v11.receiver = self;
  v11.super_class = PXLinkPresentationConfiguration;
  v7 = [(PXLinkPresentationConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_keyAsset, asset);
  }

  return v8;
}

@end