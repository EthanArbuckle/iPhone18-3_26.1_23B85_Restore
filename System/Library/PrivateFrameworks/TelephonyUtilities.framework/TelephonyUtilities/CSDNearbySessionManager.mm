@interface CSDNearbySessionManager
- (CSDNearbySessionManager)initWithAdvertisementID:(id)d;
- (CSDNearbySessionManagerDelegate)delegate;
- (void)advertiseGroupActivityWithAdvertisementID:(id)d;
- (void)setDelegate:(id)delegate;
- (void)stopAdvertisingGroupActivity;
@end

@implementation CSDNearbySessionManager

- (CSDNearbySessionManagerDelegate)delegate
{
  v2 = NearbySessionManager.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  NearbySessionManager.delegate.setter();
}

- (CSDNearbySessionManager)initWithAdvertisementID:(id)d
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return NearbySessionManager.init(advertisementID:)(v7);
}

- (void)advertiseGroupActivityWithAdvertisementID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002FD050(v9);

  (*(v5 + 8))(v9, v4);
}

- (void)stopAdvertisingGroupActivity
{
  selfCopy = self;
  sub_1002FDD10();
}

@end