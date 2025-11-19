@interface PTTextureRGBA
- (PTTextureRGBA)initWithTexture:(id)a3;
@end

@implementation PTTextureRGBA

- (PTTextureRGBA)initWithTexture:(id)a3
{
  v8.receiver = self;
  v8.super_class = PTTextureRGBA;
  v3 = a3;
  v4 = [(PTTextureRGBA *)&v8 init];
  [(PTTextureRGBA *)v4 setTexRGBA:v3, v8.receiver, v8.super_class];
  v5 = [v3 pixelFormat];
  v6 = [v3 device];

  v4->_imageblockSize = [PTMetalTextureUtil macroBlockSizeForPixelFormat:v5 device:v6];
  return v4;
}

@end