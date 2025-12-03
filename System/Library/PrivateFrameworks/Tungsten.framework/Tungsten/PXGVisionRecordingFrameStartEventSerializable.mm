@interface PXGVisionRecordingFrameStartEventSerializable
- (CGPoint)renderOrigin;
- (CGSize)viewSize;
- (PXGVisionRecordingFrameStartEventSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGVisionRecordingFrameStartEventSerializable

- (CGPoint)renderOrigin
{
  x = self->_renderOrigin.x;
  y = self->_renderOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)createSerializableObject
{
  v18 = *MEMORY[0x277D85DE8];
  v14[0] = @"viewSize";
  height = self->_viewSize.height;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_viewSize.width];
  v16 = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v17 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:2];

  v15[0] = v6;
  v14[1] = @"renderOrigin";
  y = self->_renderOrigin.y;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_renderOrigin.x];
  v16 = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  v17 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:2];

  v15[1] = v10;
  v14[2] = @"screenScale";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_screenScale];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (PXGVisionRecordingFrameStartEventSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v26.receiver = self;
  v26.super_class = PXGVisionRecordingFrameStartEventSerializable;
  v5 = [(PXGVisionRecordingFrameStartEventSerializable *)&v26 init];
  if (v5)
  {
    v6 = objectCopy;
    v7 = [v6 objectForKeyedSubscript:@"viewSize"];
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 floatValue];
    v10 = v9;
    v11 = [v7 objectAtIndexedSubscript:1];
    [v11 floatValue];
    v13 = v12;

    v5->_viewSize.width = v10;
    v5->_viewSize.height = v13;

    v14 = [v6 objectForKeyedSubscript:@"renderOrigin"];
    v15 = [v14 objectAtIndexedSubscript:0];
    [v15 floatValue];
    v17 = v16;
    v18 = [v14 objectAtIndexedSubscript:1];
    [v18 floatValue];
    v20 = v19;

    v5->_renderOrigin.x = v17;
    v5->_renderOrigin.y = v20;

    v21 = [v6 objectForKeyedSubscript:@"screenScale"];

    v22 = v21;
    [v22 floatValue];
    v24 = v23;

    v5->_screenScale = v24;
  }

  return v5;
}

@end