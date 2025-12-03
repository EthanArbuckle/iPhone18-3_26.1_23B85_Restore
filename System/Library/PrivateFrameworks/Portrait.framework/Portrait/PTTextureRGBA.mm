@interface PTTextureRGBA
- (PTTextureRGBA)initWithTexture:(id)texture;
@end

@implementation PTTextureRGBA

- (PTTextureRGBA)initWithTexture:(id)texture
{
  v8.receiver = self;
  v8.super_class = PTTextureRGBA;
  textureCopy = texture;
  v4 = [(PTTextureRGBA *)&v8 init];
  [(PTTextureRGBA *)v4 setTexRGBA:textureCopy, v8.receiver, v8.super_class];
  pixelFormat = [textureCopy pixelFormat];
  device = [textureCopy device];

  v4->_imageblockSize = [PTMetalTextureUtil macroBlockSizeForPixelFormat:pixelFormat device:device];
  return v4;
}

@end