@interface PTTextureYUV
- (PTTextureYUV)initWithLumaTexture:(id)a3 chromaTexture:(id)a4;
@end

@implementation PTTextureYUV

- (PTTextureYUV)initWithLumaTexture:(id)a3 chromaTexture:(id)a4
{
  v11.receiver = self;
  v11.super_class = PTTextureYUV;
  v5 = a4;
  v6 = a3;
  v7 = [(PTTextureYUV *)&v11 init];
  [(PTTextureYUV *)v7 setTexLuma:v6, v11.receiver, v11.super_class];
  [(PTTextureYUV *)v7 setTexChroma:v5];

  v8 = [v6 pixelFormat];
  v9 = [v6 device];

  v7->_imageblockSize = [PTMetalTextureUtil macroBlockSizeForPixelFormat:v8 device:v9];
  return v7;
}

@end