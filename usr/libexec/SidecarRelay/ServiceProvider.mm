@interface ServiceProvider
- (void)relayServiceProviderReady:(id)ready;
- (void)relaySessionOpen:(id)open reconnect:(id)reconnect serviceIdentifier:(id)identifier destination:(id)destination transport:(int64_t)transport completion:(id)completion;
@end

@implementation ServiceProvider

- (void)relaySessionOpen:(id)open reconnect:(id)reconnect serviceIdentifier:(id)identifier destination:(id)destination transport:(int64_t)transport completion:(id)completion
{
  selfCopy = self;
  transportCopy = transport;
  v10 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &selfCopy - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &selfCopy - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &selfCopy - v20;
  v22 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (reconnect)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_10001137C(v13, v23, 1, v14);
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v22);
  v27 = selfCopy;
  sub_100050B08(v21, v13, v24, v26, v19, transportCopy, v27, v22);
  _Block_release(v22);

  v28 = *(v15 + 8);
  v28(v19, v14);
  sub_100011668(v13, &qword_1000991D8, &qword_100075780);
  v28(v21, v14);
}

- (void)relayServiceProviderReady:(id)ready
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000512B0(v8);

  (*(v5 + 8))(v8, v4);
}

@end