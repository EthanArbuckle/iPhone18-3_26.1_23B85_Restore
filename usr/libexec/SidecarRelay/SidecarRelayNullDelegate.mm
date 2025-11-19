@interface SidecarRelayNullDelegate
- (BOOL)handleRapportEvent:(id)a3;
- (id)overridePresenterLaunchOptions:(id)a3;
- (void)fetchDeviceReadinessStatusWithIDSIdentifier:(id)a3 completion:(id)a4;
- (void)fetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)a3;
- (void)ignoreDetectionForAnchorIdentifier:(id)a3;
- (void)relayInitialized;
- (void)sendDataRequest:(id)a3 completion:(id)a4;
- (void)setDevicesAreNearby:(BOOL)a3;
- (void)setRelayProxy:(id)a3;
- (void)setRemoteDisplaySessionExists:(BOOL)a3;
@end

@implementation SidecarRelayNullDelegate

- (void)setDevicesAreNearby:(BOOL)a3
{
  v3 = self;
  sub_10000282C();
}

- (void)setRemoteDisplaySessionExists:(BOOL)a3
{
  v3 = self;
  sub_1000028B8();
}

- (void)setRelayProxy:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100002944();
  swift_unknownObjectRelease();
}

- (void)relayInitialized
{
  v2 = self;
  sub_1000029E0();
}

- (void)ignoreDetectionForAnchorIdentifier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100002A64();

  (*(v5 + 8))(v8, v4);
}

- (BOOL)handleRapportEvent:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100002B84();
  swift_unknownObjectRelease();

  return 0;
}

- (void)fetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100002C00(v5, v4);
  _Block_release(v4);
}

- (void)fetchDeviceReadinessStatusWithIDSIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100003024(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)sendDataRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100003138(v8, v10, v11, v6);
  _Block_release(v6);
  sub_100003388(v8, v10);
}

- (id)overridePresenterLaunchOptions:(id)a3
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_100003284();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end