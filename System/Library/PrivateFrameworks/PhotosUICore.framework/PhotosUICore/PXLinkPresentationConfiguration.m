@interface PXLinkPresentationConfiguration
- (PXLinkPresentationConfiguration)initWithKeyAsset:(id)a3;
@end

@implementation PXLinkPresentationConfiguration

- (PXLinkPresentationConfiguration)initWithKeyAsset:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXLinkPresentationActivityItemProvider.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"keyAsset"}];
  }

  v11.receiver = self;
  v11.super_class = PXLinkPresentationConfiguration;
  v7 = [(PXLinkPresentationConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_keyAsset, a3);
  }

  return v8;
}

@end