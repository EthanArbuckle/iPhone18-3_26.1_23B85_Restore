@interface PXGEngine(TextureProviderDependencies)
- (id)px_createDisplayAssetTextureProviderWithMediaProvider:()TextureProviderDependencies layoutQueue:;
- (void)px_registerAdditionalTextureProviders;
@end

@implementation PXGEngine(TextureProviderDependencies)

- (void)px_registerAdditionalTextureProviders
{
  v2 = objc_alloc_init(PXGHostedContentTextureProvider);
  [self registerTextureProvider:v2 forMediaKind:12];
}

- (id)px_createDisplayAssetTextureProviderWithMediaProvider:()TextureProviderDependencies layoutQueue:
{
  v4 = a3;
  v5 = [off_1E77215C8 alloc];
  layoutQueue = [self layoutQueue];
  v7 = [v5 initWithDefaultMediaProvider:v4 layoutQueue:layoutQueue];

  return v7;
}

@end