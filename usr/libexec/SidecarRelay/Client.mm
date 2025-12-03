@interface Client
- (void)relayDelegateSendDataRequest:(id)request completion:(id)completion;
- (void)relayDevicesForServiceIdentifier:(id)identifier completion:(id)completion;
- (void)relayFetchDeviceReadinessStatusWithIDSIdentifier:(id)identifier completion:(id)completion;
- (void)relayFetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)completion;
- (void)relayPresenterStartServiceExtension:(id)extension completion:(id)completion;
- (void)relaySession:(id)session openedByDevice:(id)device dataLink:(int64_t)link service:(id)service;
- (void)relaySession:(int64_t)session closeStream:(id)stream;
- (void)relaySession:(int64_t)session closedWithError:(id)error;
- (void)relaySession:(int64_t)session receivedOPACKData:(id)data dataLink:(int64_t)link;
- (void)relaySession:(int64_t)session sendOPACKData:(id)data completion:(id)completion;
- (void)relaySession:(int64_t)session setStreamSuspended:(BOOL)suspended completion:(id)completion;
- (void)relaySession:(int64_t)session stream:(id)stream status:(int64_t)status;
- (void)relaySessionClose:(int64_t)close error:(id)error completion:(id)completion;
- (void)relaySessionDealloc:(id)dealloc completion:(id)completion;
- (void)relaySessionOpen:(id)open reconnect:(id)reconnect serviceIdentifier:(id)identifier destination:(id)destination transport:(int64_t)transport completion:(id)completion;
- (void)relayTerminateService;
@end

@implementation Client

- (void)relaySession:(id)session openedByDevice:(id)device dataLink:(int64_t)link service:(id)service
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  deviceCopy = device;
  selfCopy = self;
  sub_100006F1C(v13, deviceCopy, link);

  (*(v10 + 8))(v13, v9);
}

- (void)relaySession:(int64_t)session closedWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_100007100();
}

- (void)relaySession:(int64_t)session receivedOPACKData:(id)data dataLink:(int64_t)link
{
  dataCopy = data;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100007510();
  sub_100003388(v7, v9);
}

- (void)relaySession:(int64_t)session stream:(id)stream status:(int64_t)status
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_100007928(session, v8, v10, status);
}

- (void)relayPresenterStartServiceExtension:(id)extension completion:(id)completion
{
  v5 = _Block_copy(completion);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_100007A34();
}

- (void)relayTerminateService
{
  selfCopy = self;
  sub_100007CA4();
}

- (void)relayFetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100007EAC(sub_100011514, v5);
}

- (void)relayFetchDeviceReadinessStatusWithIDSIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_10000833C(v6, v8, sub_100011C50, v9);
}

- (void)relayDelegateSendDataRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  requestCopy = request;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_1000084E8(v8, v10, sub_10001150C, v11);

  sub_100003388(v8, v10);
}

- (void)relayDevicesForServiceIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_100009020(v6, v8, selfCopy, v5);
  _Block_release(v5);
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
  _Block_copy(v22);
  v27 = selfCopy;
  sub_1000094D0(v21, v13, v24, v26, v19, transportCopy, v27, v22);
  _Block_release(v22);

  v28 = *(v15 + 8);
  v28(v19, v14);
  sub_100011668(v13, &qword_1000991D8, &qword_100075780);
  v28(v21, v14);
}

- (void)relaySessionClose:(int64_t)close error:(id)error completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  selfCopy = self;
  errorCopy = error;
  sub_10000AC64(close, error, selfCopy, v8);
  _Block_release(v8);
}

- (void)relaySessionDealloc:(id)dealloc completion:(id)completion
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
  sub_10000B2E4(v10, selfCopy, v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)relaySession:(int64_t)session sendOPACKData:(id)data completion:(id)completion
{
  v8 = _Block_copy(completion);
  dataCopy = data;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  sub_10000B958(session, v10, v12, selfCopy, v8);
  _Block_release(v8);
  sub_100003388(v10, v12);
}

- (void)relaySession:(int64_t)session closeStream:(id)stream
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10000DA58();
}

- (void)relaySession:(int64_t)session setStreamSuspended:(BOOL)suspended completion:(id)completion
{
  suspendedCopy = suspended;
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  selfCopy = self;
  sub_10000EA28(session, suspendedCopy, selfCopy, v8);
  _Block_release(v8);
}

@end