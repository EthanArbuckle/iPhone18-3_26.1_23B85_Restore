@interface SNWiFiRecordInternal
- (NSDate)timestamp;
- (SNWiFiRecordInternal)initWithRssi:(int64_t)a3 snr:(int64_t)a4 cca:(int64_t)a5 channelInfo:(id)a6 phyMode:(id)a7 isCaptive:(BOOL)a8 timestamp:(id)a9;
@end

@implementation SNWiFiRecordInternal

- (NSDate)timestamp
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  WiFiRecordRepresentation.timestamp.getter(v6);
  v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);

  return v7.super.isa;
}

- (SNWiFiRecordInternal)initWithRssi:(int64_t)a3 snr:(int64_t)a4 cca:(int64_t)a5 channelInfo:(id)a6 phyMode:(id)a7 isCaptive:(BOOL)a8 timestamp:(id)a9
{
  v24 = a8;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  return WiFiRecordRepresentation.init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(a3, a4, a5, v16, v18, v19, v21, v24, v15);
}

@end