@interface TestProvider
- (void)relayRegisterServiceProvider:(id)provider;
- (void)relaySessionOpen:(id)open reconnect:(id)reconnect serviceIdentifier:(id)identifier destination:(id)destination transport:(int64_t)transport completion:(id)completion;
@end

@implementation TestProvider

- (void)relayRegisterServiceProvider:(id)provider
{
  v4 = _Block_copy(provider);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000556CC(sub_100011C50, v5);
}

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
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  v28 = selfCopy;
  sub_100055838(v21, v13, v24, v26, v19, transportCopy, sub_10001131C, v27);

  v29 = *(v15 + 8);
  v29(v19, v14);
  sub_10004B2B0(v13);
  v29(v21, v14);
}

@end