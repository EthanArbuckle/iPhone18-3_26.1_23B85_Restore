@interface PXGMetalRecordingMetalSpriteTexture
- (PXGMetalRecordingMetalSpriteTexture)initWithTexture:(id)texture;
- (id)serializable;
@end

@implementation PXGMetalRecordingMetalSpriteTexture

- (id)serializable
{
  v3 = objc_alloc_init(PXGMetalRecordingMetalSpriteTextureSerializable);
  textureAddress = [(PXGMetalRecordingMetalSpriteTexture *)self textureAddress];
  -[PXGMetalRecordingMetalSpriteTextureSerializable setTexture:](v3, "setTexture:", [textureAddress unsignedIntegerValue]);

  [(PXGMetalRecordingMetalSpriteTextureSerializable *)v3 setSize:[(PXGMetalRecordingMetalSpriteTexture *)self width], [(PXGMetalRecordingMetalSpriteTexture *)self height]];
  [(PXGMetalRecordingMetalSpriteTextureSerializable *)v3 setIsAtlas:[(PXGMetalRecordingMetalSpriteTexture *)self isAtlas]];
  [(PXGMetalRecordingMetalSpriteTextureSerializable *)v3 setPixelFormat:[(PXGMetalRecordingMetalSpriteTexture *)self pixelFormat]];

  return v3;
}

- (PXGMetalRecordingMetalSpriteTexture)initWithTexture:(id)texture
{
  textureCopy = texture;
  v18.receiver = self;
  v18.super_class = PXGMetalRecordingMetalSpriteTexture;
  v5 = [(PXGMetalRecordingMetalSpriteTexture *)&v18 init];
  if (v5)
  {
    v5->_isAtlas = [textureCopy isAtlas];
    texture = [textureCopy texture];
    v5->_width = [texture width];

    texture2 = [textureCopy texture];
    v5->_height = [texture2 height];

    texture3 = [textureCopy texture];
    v5->_pixelFormat = [texture3 pixelFormat];

    texture4 = [textureCopy texture];
    v5->_mipmapLevelCount = [texture4 mipmapLevelCount];

    v10 = MEMORY[0x277CCABB0];
    texture5 = [textureCopy texture];
    v12 = [v10 numberWithUnsignedInteger:texture5];
    textureAddress = v5->_textureAddress;
    v5->_textureAddress = v12;

    spriteIndexes = [textureCopy spriteIndexes];
    v15 = [spriteIndexes copy];
    spriteIndexes = v5->_spriteIndexes;
    v5->_spriteIndexes = v15;
  }

  return v5;
}

@end