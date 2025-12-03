@interface PXGMetalRecordingFrameStartEventSerializable
- (CGSize)viewSize;
- (PXGMetalRecordingFrameStartEventSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGMetalRecordingFrameStartEventSerializable

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
  v23 = *MEMORY[0x277D85DE8];
  v18[0] = @"viewSize";
  [(PXGMetalRecordingFrameStartEventSerializable *)self viewSize];
  v4 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v20 = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v21 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:2];

  v19[0] = v7;
  v18[1] = @"renderOrigin";
  [(PXGMetalRecordingFrameStartEventSerializable *)self renderOrigin];
  v17 = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v20 = v9;
  HIDWORD(v10) = DWORD1(v17);
  LODWORD(v10) = DWORD1(v17);
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v21 = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v17), DWORD2(v17)))}];
  v22 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:3];

  v19[1] = v13;
  v18[2] = @"screenScale";
  [(PXGMetalRecordingFrameStartEventSerializable *)self screenScale];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v19[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  return v15;
}

- (PXGMetalRecordingFrameStartEventSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v30.receiver = self;
  v30.super_class = PXGMetalRecordingFrameStartEventSerializable;
  v5 = [(PXGMetalRecordingFrameStartEventSerializable *)&v30 init];
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
    v28 = v16;
    v17 = [v14 objectAtIndexedSubscript:1];
    [v17 floatValue];
    v27 = v18;
    v19 = [v14 objectAtIndexedSubscript:2];
    [v19 floatValue];
    v20 = v28;
    DWORD1(v20) = v27;
    DWORD2(v20) = v21;
    v29 = v20;

    *v5->_renderOrigin = v29;
    v22 = [v6 objectForKeyedSubscript:@"screenScale"];

    v23 = v22;
    [v23 floatValue];
    v25 = v24;

    v5->_screenScale = v25;
  }

  return v5;
}

@end