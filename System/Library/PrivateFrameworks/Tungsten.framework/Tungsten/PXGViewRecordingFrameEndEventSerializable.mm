@interface PXGViewRecordingFrameEndEventSerializable
- (PXGViewRecordingFrameEndEventSerializable)initWithSerializableObject:(id)object;
@end

@implementation PXGViewRecordingFrameEndEventSerializable

- (PXGViewRecordingFrameEndEventSerializable)initWithSerializableObject:(id)object
{
  v4.receiver = self;
  v4.super_class = PXGViewRecordingFrameEndEventSerializable;
  return [(PXGViewRecordingFrameEndEventSerializable *)&v4 init];
}

@end