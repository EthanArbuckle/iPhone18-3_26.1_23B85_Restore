@interface DaemonXPCHandler
- (_TtC13SiriTTSDaemon16DaemonXPCHandler)init;
- (void)adjustVolumeWithAccessoryId:(id)a3 volume:(float)a4 rampTime:(double)a5 didFinish:(id)a6;
- (void)cancelWithRequest:(id)a3;
- (void)clearDeviceCacheWithDidFinish:(id)a3;
- (void)downloadedVoicesMatching:(id)a3 reply:(id)a4;
- (void)forwardWithStreamObject:(id)a3;
- (void)keepActive:(BOOL)a3 reply:(id)a4;
- (void)killDaemon;
- (void)signalWithInlineStreaming:(id)a3;
- (void)speakWithPreviewRequest:(id)a3 reply:(id)a4;
- (void)subscribeWithVoices:(id)a3 clientId:(id)a4 accessoryId:(id)a5 reply:(id)a6;
- (void)subscribedVoicesWithClientId:(id)a3 reply:(id)a4;
@end

@implementation DaemonXPCHandler

- (void)downloadedVoicesMatching:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100002584(a3, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)subscribedVoicesWithClientId:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_subscriptionService);
  v11 = self;
  sub_1000027AC(v7, a3, sub_1000224C4, v9);
}

- (void)keepActive:(BOOL)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_10001BF60(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)speakWithPreviewRequest:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100015D78(v8, sub_100022B24, v7);
}

- (void)cancelWithRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001D484(v4);
}

- (void)signalWithInlineStreaming:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100020120(v4, "Received inline streaming signal %@", &dispatch thunk of InlineStreamingStorage.add(signal:));
}

- (void)forwardWithStreamObject:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100020120(v4, "Received inline stream object %@", &dispatch thunk of InlineStreamingStorage.enqueue(streamObject:));
}

- (void)subscribeWithVoices:(id)a3 clientId:(id)a4 accessoryId:(id)a5 reply:(id)a6
{
  v8 = _Block_copy(a6);
  type metadata accessor for SynthesisVoice();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (a5)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v8);
  v15 = self;
  sub_1000202EC(v9, v10, v12, v13, a5, v15, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)adjustVolumeWithAccessoryId:(id)a3 volume:(float)a4 rampTime:(double)a5 didFinish:(id)a6
{
  v11 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - v13;
  v15 = _Block_copy(a6);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  }

  _Block_copy(v15);
  v18 = self;
  sub_100021568(v14, v15, a4, a5);
  _Block_release(v15);
  _Block_release(v15);

  sub_100001E9C(v14, &qword_100035810, &qword_100027D68);
}

- (void)clearDeviceCacheWithDidFinish:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100022068(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC13SiriTTSDaemon16DaemonXPCHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)killDaemon
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Receive command to kill daemon.", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  exit(0);
}

@end