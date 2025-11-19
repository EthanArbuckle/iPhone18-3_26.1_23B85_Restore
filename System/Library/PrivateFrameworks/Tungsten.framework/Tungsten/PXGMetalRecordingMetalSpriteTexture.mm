@interface PXGMetalRecordingMetalSpriteTexture
- (PXGMetalRecordingMetalSpriteTexture)initWithTexture:(id)a3;
- (id)serializable;
@end

@implementation PXGMetalRecordingMetalSpriteTexture

- (id)serializable
{
  v3 = objc_alloc_init(PXGMetalRecordingMetalSpriteTextureSerializable);
  v4 = [(PXGMetalRecordingMetalSpriteTexture *)self textureAddress];
  -[PXGMetalRecordingMetalSpriteTextureSerializable setTexture:](v3, "setTexture:", [v4 unsignedIntegerValue]);

  [(PXGMetalRecordingMetalSpriteTextureSerializable *)v3 setSize:[(PXGMetalRecordingMetalSpriteTexture *)self width], [(PXGMetalRecordingMetalSpriteTexture *)self height]];
  [(PXGMetalRecordingMetalSpriteTextureSerializable *)v3 setIsAtlas:[(PXGMetalRecordingMetalSpriteTexture *)self isAtlas]];
  [(PXGMetalRecordingMetalSpriteTextureSerializable *)v3 setPixelFormat:[(PXGMetalRecordingMetalSpriteTexture *)self pixelFormat]];

  return v3;
}

- (PXGMetalRecordingMetalSpriteTexture)initWithTexture:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PXGMetalRecordingMetalSpriteTexture;
  v5 = [(PXGMetalRecordingMetalSpriteTexture *)&v18 init];
  if (v5)
  {
    v5->_isAtlas = [v4 isAtlas];
    v6 = [v4 texture];
    v5->_width = [v6 width];

    v7 = [v4 texture];
    v5->_height = [v7 height];

    v8 = [v4 texture];
    v5->_pixelFormat = [v8 pixelFormat];

    v9 = [v4 texture];
    v5->_mipmapLevelCount = [v9 mipmapLevelCount];

    v10 = MEMORY[0x277CCABB0];
    v11 = [v4 texture];
    v12 = [v10 numberWithUnsignedInteger:v11];
    textureAddress = v5->_textureAddress;
    v5->_textureAddress = v12;

    v14 = [v4 spriteIndexes];
    v15 = [v14 copy];
    spriteIndexes = v5->_spriteIndexes;
    v5->_spriteIndexes = v15;
  }

  return v5;
}

@end