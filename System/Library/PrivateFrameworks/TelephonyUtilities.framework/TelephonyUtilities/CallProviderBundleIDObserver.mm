@interface CallProviderBundleIDObserver
- (void)handleCallStatusChanged:(id)changed;
@end

@implementation CallProviderBundleIDObserver

- (void)handleCallStatusChanged:(id)changed
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10002D004();

  (*(v4 + 8))(v8, v3);
}

@end