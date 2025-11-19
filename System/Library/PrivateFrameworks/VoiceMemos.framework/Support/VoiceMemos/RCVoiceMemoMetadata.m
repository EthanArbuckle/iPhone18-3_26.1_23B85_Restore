@interface RCVoiceMemoMetadata
- (id)initFromCloudRecording:(id)a3 withCodecs:(id)a4;
@end

@implementation RCVoiceMemoMetadata

- (id)initFromCloudRecording:(id)a3 withCodecs:(id)a4
{
  type metadata accessor for RCAudioCodecName(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100033688(a3, v5);
}

@end