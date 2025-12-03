@interface PXGVisionRecordingFrameEndEventSerializable
- (PXGVisionRecordingFrameEndEventSerializable)initWithSerializableObject:(id)object;
@end

@implementation PXGVisionRecordingFrameEndEventSerializable

- (PXGVisionRecordingFrameEndEventSerializable)initWithSerializableObject:(id)object
{
  v4.receiver = self;
  v4.super_class = PXGVisionRecordingFrameEndEventSerializable;
  return [(PXGVisionRecordingFrameEndEventSerializable *)&v4 init];
}

@end