@interface RCVoiceMemoMetadata
- (id)initFromCloudRecording:(id)recording withCodecs:(id)codecs;
@end

@implementation RCVoiceMemoMetadata

- (id)initFromCloudRecording:(id)recording withCodecs:(id)codecs
{
  type metadata accessor for RCAudioCodecName(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100033688(recording, v5);
}

@end