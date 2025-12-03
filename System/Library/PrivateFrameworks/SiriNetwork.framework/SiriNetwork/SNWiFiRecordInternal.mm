@interface SNWiFiRecordInternal
- (NSDate)timestamp;
- (SNWiFiRecordInternal)initWithRssi:(int64_t)rssi snr:(int64_t)snr cca:(int64_t)cca channelInfo:(id)info phyMode:(id)mode isCaptive:(BOOL)captive timestamp:(id)timestamp;
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

- (SNWiFiRecordInternal)initWithRssi:(int64_t)rssi snr:(int64_t)snr cca:(int64_t)cca channelInfo:(id)info phyMode:(id)mode isCaptive:(BOOL)captive timestamp:(id)timestamp
{
  captiveCopy = captive;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  return WiFiRecordRepresentation.init(rssi:snr:cca:channelInfo:phyMode:isCaptive:timestamp:)(rssi, snr, cca, v16, v18, v19, v21, captiveCopy, v15);
}

@end