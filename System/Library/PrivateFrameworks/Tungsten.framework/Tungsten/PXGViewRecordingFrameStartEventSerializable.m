@interface PXGViewRecordingFrameStartEventSerializable
- (CGPoint)renderOrigin;
- (CGSize)viewSize;
- (PXGViewRecordingFrameStartEventSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGViewRecordingFrameStartEventSerializable

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
  v20 = *MEMORY[0x277D85DE8];
  v16[0] = @"viewSize";
  [(PXGViewRecordingFrameStartEventSerializable *)self viewSize];
  v4 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v18 = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v19 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:2];

  v17[0] = v7;
  v16[1] = @"renderOrigin";
  [(PXGViewRecordingFrameStartEventSerializable *)self renderOrigin];
  v9 = v8;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v18 = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v19 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:2];

  v17[1] = v12;
  v16[2] = @"screenScale";
  [(PXGViewRecordingFrameStartEventSerializable *)self screenScale];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v14;
}

- (PXGViewRecordingFrameStartEventSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PXGViewRecordingFrameStartEventSerializable;
  v5 = [(PXGViewRecordingFrameStartEventSerializable *)&v26 init];
  if (v5)
  {
    v6 = v4;
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