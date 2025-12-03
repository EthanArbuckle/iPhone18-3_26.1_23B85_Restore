@interface PVMetalTexturePool
- (HGMetalTexturePool)texturePool;
- (PVMetalTexturePool)init;
- (id)getTexture:(id)texture;
@end

@implementation PVMetalTexturePool

- (PVMetalTexturePool)init
{
  v3.receiver = self;
  v3.super_class = PVMetalTexturePool;
  return [(PVMetalTexturePool *)&v3 init];
}

- (id)getTexture:(id)texture
{
  textureCopy = texture;
  texturePool = [(PVMetalTexturePool *)self texturePool];
  if (texturePool)
  {
    *(&v7 + 1) = [textureCopy height];
    pixelFormat = [textureCopy pixelFormat];
    usage = [textureCopy usage];
    storageMode = [textureCopy storageMode];
    v11 = 0x100000002;
    HGMetalTexturePool::newTexture(texturePool, &v7, 0);
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