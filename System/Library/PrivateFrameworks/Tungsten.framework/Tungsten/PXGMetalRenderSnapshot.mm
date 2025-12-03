@interface PXGMetalRenderSnapshot
- (PXGMetalRenderSnapshot)initWithTexture:(id)texture;
@end

@implementation PXGMetalRenderSnapshot

- (PXGMetalRenderSnapshot)initWithTexture:(id)texture
{
  textureCopy = texture;
  v9.receiver = self;
  v9.super_class = PXGMetalRenderSnapshot;
  v6 = [(PXGMetalRenderSnapshot *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_texture, texture);
  }

  return v7;
}

@end