@interface PXGMetalRecordingRenderEventSerializable
- (PXGMetalRecordingRenderEventSerializable)initWithSerializableObject:(id)a3;
- (_NSRange)bufferRange;
- (id)createSerializableObject;
@end

@implementation PXGMetalRecordingRenderEventSerializable

- (_NSRange)bufferRange
{
  length = self->_bufferRange.length;
  location = self->_bufferRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)createSerializableObject
{
  v21[2] = *MEMORY[0x277D85DE8];
  v19[0] = @"texture";
  v3 = [(PXGMetalRecordingRenderEventSerializable *)self texture];
  v4 = [v3 createSerializableObject];
  v20[0] = v4;
  v19[1] = @"bufferRange";
  v5 = [(PXGMetalRecordingRenderEventSerializable *)self bufferRange];
  v7 = v6;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v21[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v21[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

  v20[1] = v10;
  v19[2] = @"zPosition";
  [(PXGMetalRecordingRenderEventSerializable *)self zPosition];
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v20[2] = v11;
  v19[3] = @"contentsGravity";
  v12 = [(PXGMetalRecordingRenderEventSerializable *)self contentsGravity];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v20[3] = v13;
  v19[4] = @"isOpaque";
  v14 = [(PXGMetalRecordingRenderEventSerializable *)self isOpaque];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v20[4] = v15;
  v19[5] = @"spriteIndices";
  v16 = [(PXGMetalRecordingRenderEventSerializable *)self spriteIndices];
  v20[5] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];

  return v17;
}

- (PXGMetalRecordingRenderEventSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PXGMetalRecordingRenderEventSerializable;
  v5 = [(PXGMetalRecordingRenderEventSerializable *)&v24 init];
  if (v5)
  {
    v6 = v4;
    v7 = [PXGMetalRecordingMetalSpriteTextureSerializable alloc];
    v8 = [v6 objectForKeyedSubscript:@"texture"];
    v9 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)v7 initWithSerializableObject:v8];
    texture = v5->_texture;
    v5->_texture = v9;

    v11 = [v6 objectForKeyedSubscript:@"bufferRange"];
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 unsignedIntValue];
    v14 = [v11 objectAtIndexedSubscript:1];
    v15 = [v14 unsignedIntValue];

    v5->_bufferRange.location = v13;
    v5->_bufferRange.length = v15;

    v16 = [v6 objectForKeyedSubscript:@"zPosition"];
    [v16 floatValue];
    v18 = v17;

    v5->_zPosition = v18;
    v19 = [v6 objectForKeyedSubscript:@"contentsGravity"];
    LOBYTE(v12) = [v19 unsignedIntValue];

    v5->_contentsGravity = v12;
    v20 = [v6 objectForKeyedSubscript:@"isOpaque"];
    LOBYTE(v12) = [v20 BOOLValue];

    v5->_isOpaque = v12;
    v21 = [v6 objectForKeyedSubscript:@"spriteIndices"];

    spriteIndices = v5->_spriteIndices;
    v5->_spriteIndices = v21;
  }

  return v5;
}

@end