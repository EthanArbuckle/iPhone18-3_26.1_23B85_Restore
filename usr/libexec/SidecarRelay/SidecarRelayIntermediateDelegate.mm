@interface SidecarRelayIntermediateDelegate
- (BOOL)handleRapportEvent:(id)event;
- (id)overridePresenterLaunchOptions:(id)options;
- (void)fetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)completion;
- (void)ignoreDetectionForAnchorIdentifier:(id)identifier;
- (void)ignoreDetectionOfAnchorWithIdentifier:(id)identifier completion:(id)completion;
- (void)relayInitialized;
- (void)sendDataRequest:(id)request completion:(id)completion;
- (void)setDevicesAreNearby:(BOOL)nearby;
- (void)setRelayProxy:(id)proxy;
- (void)setRemoteDisplaySessionExists:(BOOL)exists;
@end

@implementation SidecarRelayIntermediateDelegate

- (void)setRelayProxy:(id)proxy
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10001C728(proxy);
  swift_unknownObjectRelease();
}

- (void)relayInitialized
{
  selfCopy = self;
  sub_10001CB34();
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
  sub_10001CCA8(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)setDevicesAreNearby:(BOOL)nearby
{
  selfCopy = self;
  sub_10001D22C(nearby);
}

- (void)setRemoteDisplaySessionExists:(BOOL)exists
{
  selfCopy = self;
  sub_10001D298(exists);
}

- (BOOL)handleRapportEvent:(id)event
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_10001D304(event);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)fetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_10001D74C(sub_100011514);
}

- (void)ignoreDetectionOfAnchorWithIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  sub_10001DB14(v10, selfCopy, v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)sendDataRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  requestCopy = request;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_10001DCCC(v8, v10, sub_10001150C, v11);

  sub_100003388(v8, v10);
}

- (id)overridePresenterLaunchOptions:(id)options
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001DEA8();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end