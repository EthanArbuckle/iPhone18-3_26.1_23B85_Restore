@interface PXBoopPhotosFileProviderRegisterConfiguration
@end

@implementation PXBoopPhotosFileProviderRegisterConfiguration

uint64_t ___PXBoopPhotosFileProviderRegisterConfiguration_block_invoke()
{
  v0 = [[PXPhotosFileProviderRegisterConfiguration alloc] initWithUsage:2];
  v1 = _PXBoopPhotosFileProviderRegisterConfiguration_configuration;
  _PXBoopPhotosFileProviderRegisterConfiguration_configuration = v0;

  v2 = _PXBoopPhotosFileProviderRegisterConfiguration_configuration;

  return [v2 setClientEncodingPolicy:1];
}

@end