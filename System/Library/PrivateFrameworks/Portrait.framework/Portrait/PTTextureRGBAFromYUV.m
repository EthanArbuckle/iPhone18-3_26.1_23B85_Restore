@interface PTTextureRGBAFromYUV
- (PTTextureRGBAFromYUV)initWithTexture:(id)a3;
@end

@implementation PTTextureRGBAFromYUV

- (PTTextureRGBAFromYUV)initWithTexture:(id)a3
{
  v5.receiver = self;
  v5.super_class = PTTextureRGBAFromYUV;
  v3 = [(PTTextureRGBA *)&v5 initWithTexture:a3];
  [(PTTexture *)v3 setColorPrimaries:*MEMORY[0x277CC4C30]];
  [(PTTexture *)v3 setTransferFunction:*MEMORY[0x277CC4CD8]];
  [(PTTexture *)v3 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
  [(PTTexture *)v3 setYCbCrColorDepth:0];
  [(PTTexture *)v3 setYCbCrFullRange:1];
  return v3;
}

@end