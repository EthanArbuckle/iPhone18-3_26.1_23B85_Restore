@interface SNSpeechPacketInternal
- (NSArray)packets;
- (id)serializedAceDataAndReturnError:(id *)error;
- (void)setPackets:(id)packets;
- (void)setSessionRequestId:(id)id;
@end

@implementation SNSpeechPacketInternal

- (NSArray)packets
{
  SpeechPacket.packets.getter();
  type metadata accessor for NSData();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setPackets:(id)packets
{
  type metadata accessor for NSData();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  SpeechPacket.packets.setter(v4);
}

- (id)serializedAceDataAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = SpeechPacket.serializedAceData()();

  return v4;
}

- (void)setSessionRequestId:(id)id
{
  if (id)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

@end