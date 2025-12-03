@interface TestSession
- (RPRemoteDisplayDevice)destinationDevice;
- (void)activateWithCompletion:(id)completion;
- (void)deregisterEventID:(id)d;
- (void)deregisterRequestID:(id)d;
- (void)invalidate;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)setDestinationDevice:(id)device;
@end

@implementation TestSession

- (RPRemoteDisplayDevice)destinationDevice
{
  v2 = sub_100053694();

  return v2;
}

- (void)setDestinationDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
}

- (void)registerEventID:(id)d options:(id)options handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (options)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  sub_10005371C(v8, v10, v13, sub_100055D30, v11);
}

- (void)deregisterEventID:(id)d
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100053990();
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  v9 = _Block_copy(completion);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (options)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = sub_100011C50;
  }

  selfCopy = self;
  sub_100053B14(selfCopy, v11, v12, v13, v14, v15, v9);
  sub_100010FE8(v9);
}

- (void)activateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_100054660(v7, v6, &unk_10008FCA8, sub_100056094, &unk_10008FCC0);
  sub_100010FE8(v7);
}

- (void)invalidate
{
  selfCopy = self;
  sub_100053DD0();
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  v6 = _Block_copy(handler);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (options)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *(swift_allocObject() + 16) = v6;
}

- (void)deregisterRequestID:(id)d
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (options)
  {
    options = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v9);
  selfCopy = self;
  sub_10005413C(v10, v12, v13, v14, v16, options, selfCopy, v9);
  _Block_release(v9);
}

@end