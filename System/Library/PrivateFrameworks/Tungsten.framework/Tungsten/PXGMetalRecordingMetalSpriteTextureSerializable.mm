@interface PXGMetalRecordingMetalSpriteTextureSerializable
- (CGSize)size;
- (PXGMetalRecordingMetalSpriteTextureSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGMetalRecordingMetalSpriteTextureSerializable

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)createSerializableObject
{
  v18[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"texture";
  v3 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)self texture];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v17[0] = v4;
  v16[1] = @"size";
  [(PXGMetalRecordingMetalSpriteTextureSerializable *)self size];
  v6 = v5;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v18[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v18[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v17[1] = v9;
  v16[2] = @"isAtlas";
  v10 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)self isAtlas];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v17[2] = v11;
  v16[3] = @"pixelFormat";
  v12 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)self pixelFormat];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v14;
}

- (PXGMetalRecordingMetalSpriteTextureSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PXGMetalRecordingMetalSpriteTextureSerializable;
  v5 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)&v22 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"texture"];
    v8 = [v7 unsignedIntValue];

    [(PXGMetalRecordingMetalSpriteTextureSerializable *)v5 setTexture:v8];
    v9 = [v6 objectForKeyedSubscript:@"size"];
    v10 = [v9 objectAtIndexedSubscript:0];
    [v10 floatValue];
    v12 = v11;
    v13 = [v9 objectAtIndexedSubscript:1];
    [v13 floatValue];
    v15 = v14;

    [(PXGMetalRecordingMetalSpriteTextureSerializable *)v5 setSize:v12, v15];
    v16 = [v6 objectForKeyedSubscript:@"isAtlas"];
    v17 = [v16 BOOLValue];

    [(PXGMetalRecordingMetalSpriteTextureSerializable *)v5 setIsAtlas:v17];
    v18 = [v6 objectForKeyedSubscript:@"pixelFormat"];

    v19 = v18;
    v20 = [v19 intValue];

    [(PXGMetalRecordingMetalSpriteTextureSerializable *)v5 setPixelFormat:v20];
  }

  return v5;
}

@end