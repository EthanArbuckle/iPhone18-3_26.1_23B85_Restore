@interface SidecarRelayNullDelegate
- (BOOL)handleRapportEvent:(id)event;
- (id)overridePresenterLaunchOptions:(id)options;
- (void)fetchDeviceReadinessStatusWithIDSIdentifier:(id)identifier completion:(id)completion;
- (void)fetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)completion;
- (void)ignoreDetectionForAnchorIdentifier:(id)identifier;
- (void)relayInitialized;
- (void)sendDataRequest:(id)request completion:(id)completion;
- (void)setDevicesAreNearby:(BOOL)nearby;
- (void)setRelayProxy:(id)proxy;
- (void)setRemoteDisplaySessionExists:(BOOL)exists;
@end

@implementation SidecarRelayNullDelegate

- (void)setDevicesAreNearby:(BOOL)nearby
{
  selfCopy = self;
  sub_10000282C();
}

- (void)setRemoteDisplaySessionExists:(BOOL)exists
{
  selfCopy = self;
  sub_1000028B8();
}

- (void)setRelayProxy:(id)proxy
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100002944();
  swift_unknownObjectRelease();
}

- (void)relayInitialized
{
  selfCopy = self;
  sub_1000029E0();
}

- (void)ignoreDetectionForAnchorIdentifier:(id)identifier
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100002A64();

  (*(v5 + 8))(v8, v4);
}

- (BOOL)handleRapportEvent:(id)event
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100002B84();
  swift_unknownObjectRelease();

  return 0;
}

- (void)fetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_100002C00(selfCopy, v4);
  _Block_release(v4);
}

- (void)fetchDeviceReadinessStatusWithIDSIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_100003024(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)sendDataRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  requestCopy = request;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_100003138(v8, v10, selfCopy, v6);
  _Block_release(v6);
  sub_100003388(v8, v10);
}

- (id)overridePresenterLaunchOptions:(id)options
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100003284();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end