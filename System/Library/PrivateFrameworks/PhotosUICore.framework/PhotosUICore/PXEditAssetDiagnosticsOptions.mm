@interface PXEditAssetDiagnosticsOptions
- (PXEditAssetDiagnosticsOptions)init;
@end

@implementation PXEditAssetDiagnosticsOptions

- (PXEditAssetDiagnosticsOptions)init
{
  v5.receiver = self;
  v5.super_class = PXEditAssetDiagnosticsOptions;
  v2 = [(PXEditAssetDiagnosticsOptions *)&v5 init];
  if (v2)
  {
    oneToOneScalePolicy = [MEMORY[0x1E69B3A88] oneToOneScalePolicy];
    [(PXEditAssetDiagnosticsOptions *)v2 setScalePolicyForRenders:oneToOneScalePolicy];
  }

  return v2;
}

@end