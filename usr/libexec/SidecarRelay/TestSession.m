@interface TestSession
- (RPRemoteDisplayDevice)destinationDevice;
- (void)activateWithCompletion:(id)a3;
- (void)deregisterEventID:(id)a3;
- (void)deregisterRequestID:(id)a3;
- (void)invalidate;
- (void)registerEventID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7;
- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)setDestinationDevice:(id)a3;
@end

@implementation TestSession

- (RPRemoteDisplayDevice)destinationDevice
{
  v2 = sub_100053694();

  return v2;
}

- (void)setDestinationDevice:(id)a3
{
  v5 = a3;
  v6 = self;
}

- (void)registerEventID:(id)a3 options:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  sub_10005371C(v8, v10, v13, sub_100055D30, v11);
}

- (void)deregisterEventID:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_100053990();
}

- (void)sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7
{
  v9 = _Block_copy(a7);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = sub_100011C50;
  }

  v10 = self;
  sub_100053B14(v10, v11, v12, v13, v14, v15, v9);
  sub_100010FE8(v9);
}

- (void)activateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_100011C50;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_100054660(v7, v6, &unk_10008FCA8, sub_100056094, &unk_10008FCC0);
  sub_100010FE8(v7);
}

- (void)invalidate
{
  v2 = self;
  sub_100053DD0();
}

- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *(swift_allocObject() + 16) = v6;
}

- (void)deregisterRequestID:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v9 = _Block_copy(a7);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (a6)
  {
    a6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v9);
  v17 = self;
  sub_10005413C(v10, v12, v13, v14, v16, a6, v17, v9);
  _Block_release(v9);
}

@end