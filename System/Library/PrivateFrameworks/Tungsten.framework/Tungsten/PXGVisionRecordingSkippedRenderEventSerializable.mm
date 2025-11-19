@interface PXGVisionRecordingSkippedRenderEventSerializable
- (PXGVisionRecordingSkippedRenderEventSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGVisionRecordingSkippedRenderEventSerializable

- (id)createSerializableObject
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"reason";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reason];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (PXGVisionRecordingSkippedRenderEventSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXGVisionRecordingSkippedRenderEventSerializable;
  v5 = [(PXGVisionRecordingSkippedRenderEventSerializable *)&v8 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reason"];
    v5->_reason = [v6 unsignedIntValue];
  }

  return v5;
}

@end