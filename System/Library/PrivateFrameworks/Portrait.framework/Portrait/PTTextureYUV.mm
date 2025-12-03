@interface PTTextureYUV
- (PTTextureYUV)initWithLumaTexture:(id)texture chromaTexture:(id)chromaTexture;
@end

@implementation PTTextureYUV

- (PTTextureYUV)initWithLumaTexture:(id)texture chromaTexture:(id)chromaTexture
{
  v11.receiver = self;
  v11.super_class = PTTextureYUV;
  chromaTextureCopy = chromaTexture;
  textureCopy = texture;
  v7 = [(PTTextureYUV *)&v11 init];
  [(PTTextureYUV *)v7 setTexLuma:textureCopy, v11.receiver, v11.super_class];
  [(PTTextureYUV *)v7 setTexChroma:chromaTextureCopy];

  pixelFormat = [textureCopy pixelFormat];
  device = [textureCopy device];

  v7->_imageblockSize = [PTMetalTextureUtil macroBlockSizeForPixelFormat:pixelFormat device:device];
  return v7;
}

@end