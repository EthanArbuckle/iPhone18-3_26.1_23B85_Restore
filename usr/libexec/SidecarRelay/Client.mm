@interface Client
- (void)relayDelegateSendDataRequest:(id)a3 completion:(id)a4;
- (void)relayDevicesForServiceIdentifier:(id)a3 completion:(id)a4;
- (void)relayFetchDeviceReadinessStatusWithIDSIdentifier:(id)a3 completion:(id)a4;
- (void)relayFetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)a3;
- (void)relayPresenterStartServiceExtension:(id)a3 completion:(id)a4;
- (void)relaySession:(id)a3 openedByDevice:(id)a4 dataLink:(int64_t)a5 service:(id)a6;
- (void)relaySession:(int64_t)a3 closeStream:(id)a4;
- (void)relaySession:(int64_t)a3 closedWithError:(id)a4;
- (void)relaySession:(int64_t)a3 receivedOPACKData:(id)a4 dataLink:(int64_t)a5;
- (void)relaySession:(int64_t)a3 sendOPACKData:(id)a4 completion:(id)a5;
- (void)relaySession:(int64_t)a3 setStreamSuspended:(BOOL)a4 completion:(id)a5;
- (void)relaySession:(int64_t)a3 stream:(id)a4 status:(int64_t)a5;
- (void)relaySessionClose:(int64_t)a3 error:(id)a4 completion:(id)a5;
- (void)relaySessionDealloc:(id)a3 completion:(id)a4;
- (void)relaySessionOpen:(id)a3 reconnect:(id)a4 serviceIdentifier:(id)a5 destination:(id)a6 transport:(int64_t)a7 completion:(id)a8;
- (void)relayTerminateService;
@end

@implementation Client

- (void)relaySession:(id)a3 openedByDevice:(id)a4 dataLink:(int64_t)a5 service:(id)a6
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a4;
  v15 = self;
  sub_100006F1C(v13, v14, a5);

  (*(v10 + 8))(v13, v9);
}

- (void)relaySession:(int64_t)a3 closedWithError:(id)a4
{
  v5 = self;
  v6 = a4;
  sub_100007100();
}

- (void)relaySession:(int64_t)a3 receivedOPACKData:(id)a4 dataLink:(int64_t)a5
{
  v6 = a4;
  v10 = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100007510();
  sub_100003388(v7, v9);
}

- (void)relaySession:(int64_t)a3 stream:(id)a4 status:(int64_t)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  sub_100007928(a3, v8, v10, a5);
}

- (void)relayPresenterStartServiceExtension:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_100007A34();
}

- (void)relayTerminateService
{
  v2 = self;
  sub_100007CA4();
}

- (void)relayFetchRemoteDisplaySendingDeviceStatesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100007EAC(sub_100011514, v5);
}

- (void)relayFetchDeviceReadinessStatusWithIDSIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_10000833C(v6, v8, sub_100011C50, v9);
}

- (void)relayDelegateSendDataRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_1000084E8(v8, v10, sub_10001150C, v11);

  sub_100003388(v8, v10);
}

- (void)relayDevicesForServiceIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100009020(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)relaySessionOpen:(id)a3 reconnect:(id)a4 serviceIdentifier:(id)a5 destination:(id)a6 transport:(int64_t)a7 completion:(id)a8
{
  v29 = self;
  v30 = a7;
  v10 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  v22 = _Block_copy(a8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
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
  v27 = v29;
  sub_1000094D0(v21, v13, v24, v26, v19, v30, v27, v22);
  _Block_release(v22);

  v28 = *(v15 + 8);
  v28(v19, v14);
  sub_100011668(v13, &qword_1000991D8, &qword_100075780);
  v28(v21, v14);
}

- (void)relaySessionClose:(int64_t)a3 error:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  v10 = a4;
  sub_10000AC64(a3, a4, v9, v8);
  _Block_release(v8);
}

- (void)relaySessionDealloc:(id)a3 completion:(id)a4
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
  sub_10000B2E4(v10, v12, v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)relaySession:(int64_t)a3 sendOPACKData:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a4;
  v13 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  sub_10000B958(a3, v10, v12, v13, v8);
  _Block_release(v8);
  sub_100003388(v10, v12);
}

- (void)relaySession:(int64_t)a3 closeStream:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10000DA58();
}

- (void)relaySession:(int64_t)a3 setStreamSuspended:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_10000EA28(a3, v5, v9, v8);
  _Block_release(v8);
}

@end