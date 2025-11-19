@interface SNSpeechPacketInternal
- (NSArray)packets;
- (id)serializedAceDataAndReturnError:(id *)a3;
- (void)setPackets:(id)a3;
- (void)setSessionRequestId:(id)a3;
@end

@implementation SNSpeechPacketInternal

- (NSArray)packets
{
  SpeechPacket.packets.getter();
  type metadata accessor for NSData();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setPackets:(id)a3
{
  type metadata accessor for NSData();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  SpeechPacket.packets.setter(v4);
}

- (id)serializedAceDataAndReturnError:(id *)a3
{
  v3 = self;
  v4 = SpeechPacket.serializedAceData()();

  return v4;
}

- (void)setSessionRequestId:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

@end