@interface PXGMetalRecordingFrameEndEventSerializable
- (PXGMetalRecordingFrameEndEventSerializable)initWithSerializableObject:(id)object;
@end

@implementation PXGMetalRecordingFrameEndEventSerializable

- (PXGMetalRecordingFrameEndEventSerializable)initWithSerializableObject:(id)object
{
  v4.receiver = self;
  v4.super_class = PXGMetalRecordingFrameEndEventSerializable;
  return [(PXGMetalRecordingFrameEndEventSerializable *)&v4 init];
}

@end