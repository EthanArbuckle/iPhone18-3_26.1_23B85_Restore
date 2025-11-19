@interface SidecarRelayIntermediateDelegate
- (BOOL)handleRapportEvent:(id)a3;
- (id)overridePresenterLaunchOptions:(id)a3;
- (void)fetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)a3;
- (void)ignoreDetectionForAnchorIdentifier:(id)a3;
- (void)ignoreDetectionOfAnchorWithIdentifier:(id)a3 completion:(id)a4;
- (void)relayInitialized;
- (void)sendDataRequest:(id)a3 completion:(id)a4;
- (void)setDevicesAreNearby:(BOOL)a3;
- (void)setRelayProxy:(id)a3;
- (void)setRemoteDisplaySessionExists:(BOOL)a3;
@end

@implementation SidecarRelayIntermediateDelegate

- (void)setRelayProxy:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10001C728(a3);
  swift_unknownObjectRelease();
}

- (void)relayInitialized
{
  v2 = self;
  sub_10001CB34();
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
  sub_10001CCA8(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)setDevicesAreNearby:(BOOL)a3
{
  v4 = self;
  sub_10001D22C(a3);
}

- (void)setRemoteDisplaySessionExists:(BOOL)a3
{
  v4 = self;
  sub_10001D298(a3);
}

- (BOOL)handleRapportEvent:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_10001D304(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)fetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_10001D74C(sub_100011514);
}

- (void)ignoreDetectionOfAnchorWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  sub_10001DB14(v10, v12, v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)sendDataRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_10001DCCC(v8, v10, sub_10001150C, v11);

  sub_100003388(v8, v10);
}

- (id)overridePresenterLaunchOptions:(id)a3
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10001DEA8();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end