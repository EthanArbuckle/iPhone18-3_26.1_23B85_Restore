@interface PXGMetalRecordingMetalSpriteTextureSerializable
- (CGSize)size;
- (PXGMetalRecordingMetalSpriteTextureSerializable)initWithSerializableObject:(id)object;
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
  texture = [(PXGMetalRecordingMetalSpriteTextureSerializable *)self texture];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:texture];
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
  isAtlas = [(PXGMetalRecordingMetalSpriteTextureSerializable *)self isAtlas];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:isAtlas];
  v17[2] = v11;
  v16[3] = @"pixelFormat";
  pixelFormat = [(PXGMetalRecordingMetalSpriteTextureSerializable *)self pixelFormat];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:pixelFormat];
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v14;
}

- (PXGMetalRecordingMetalSpriteTextureSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v22.receiver = self;
  v22.super_class = PXGMetalRecordingMetalSpriteTextureSerializable;
  v5 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)&v22 init];
  if (v5)
  {
    v6 = objectCopy;
    v7 = [v6 objectForKeyedSubscript:@"texture"];
    unsignedIntValue = [v7 unsignedIntValue];

    [(PXGMetalRecordingMetalSpriteTextureSerializable *)v5 setTexture:unsignedIntValue];
    v9 = [v6 objectForKeyedSubscript:@"size"];
    v10 = [v9 objectAtIndexedSubscript:0];
    [v10 floatValue];
    v12 = v11;
    v13 = [v9 objectAtIndexedSubscript:1];
    [v13 floatValue];
    v15 = v14;

    [(PXGMetalRecordingMetalSpriteTextureSerializable *)v5 setSize:v12, v15];
    v16 = [v6 objectForKeyedSubscript:@"isAtlas"];
    bOOLValue = [v16 BOOLValue];

    [(PXGMetalRecordingMetalSpriteTextureSerializable *)v5 setIsAtlas:bOOLValue];
    v18 = [v6 objectForKeyedSubscript:@"pixelFormat"];

    v19 = v18;
    intValue = [v19 intValue];

    [(PXGMetalRecordingMetalSpriteTextureSerializable *)v5 setPixelFormat:intValue];
  }

  return v5;
}

@end