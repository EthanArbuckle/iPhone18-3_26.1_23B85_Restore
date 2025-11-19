@interface PXCMMAssetPreparationOptions
- (PXCMMAssetPreparationOptions)init;
@end

@implementation PXCMMAssetPreparationOptions

- (PXCMMAssetPreparationOptions)init
{
  v3.receiver = self;
  v3.super_class = PXCMMAssetPreparationOptions;
  result = [(PXCMMAssetPreparationOptions *)&v3 init];
  if (result)
  {
    *&result->_publishAsOriginal = 0;
    result->_removeLocationData = 0;
  }

  return result;
}

@end