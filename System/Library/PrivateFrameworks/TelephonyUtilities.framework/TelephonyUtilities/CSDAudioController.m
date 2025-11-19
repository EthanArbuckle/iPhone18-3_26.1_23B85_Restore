@interface CSDAudioController
- (void)expediteDeferredEndInterruptionForCallWithUUID:(id)a3;
@end

@implementation CSDAudioController

- (void)expediteDeferredEndInterruptionForCallWithUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_100341520(v9);

  (*(v5 + 8))(v9, v4);
}

@end