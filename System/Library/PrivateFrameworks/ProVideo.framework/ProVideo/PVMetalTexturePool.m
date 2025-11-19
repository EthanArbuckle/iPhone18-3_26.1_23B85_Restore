@interface PVMetalTexturePool
- (HGMetalTexturePool)texturePool;
- (PVMetalTexturePool)init;
- (id)getTexture:(id)a3;
@end

@implementation PVMetalTexturePool

- (PVMetalTexturePool)init
{
  v3.receiver = self;
  v3.super_class = PVMetalTexturePool;
  return [(PVMetalTexturePool *)&v3 init];
}

- (id)getTexture:(id)a3
{
  v4 = a3;
  v5 = [(PVMetalTexturePool *)self texturePool];
  if (v5)
  {
    *(&v7 + 1) = [v4 height];
    v8 = [v4 pixelFormat];
    v9 = [v4 usage];
    v10 = [v4 storageMode];
    v11 = 0x100000002;
    HGMetalTexturePool::newTexture(v5, &v7, 0);
  }

  return 0;
}

- (HGMetalTexturePool)texturePool
{
  result = HGMetalDeviceInfo::getMainDevice(self);
  if (result)
  {
    return *(HGGPUResources::getDeviceResources(result, v3) + 5);
  }

  return result;
}

@end