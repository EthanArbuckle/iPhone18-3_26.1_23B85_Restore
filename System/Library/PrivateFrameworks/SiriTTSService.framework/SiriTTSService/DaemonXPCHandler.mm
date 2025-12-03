@interface DaemonXPCHandler
- (_TtC13SiriTTSDaemon16DaemonXPCHandler)init;
- (void)adjustVolumeWithAccessoryId:(id)id volume:(float)volume rampTime:(double)time didFinish:(id)finish;
- (void)cancelWithRequest:(id)request;
- (void)clearDeviceCacheWithDidFinish:(id)finish;
- (void)downloadedVoicesMatching:(id)matching reply:(id)reply;
- (void)forwardWithStreamObject:(id)object;
- (void)keepActive:(BOOL)active reply:(id)reply;
- (void)killDaemon;
- (void)signalWithInlineStreaming:(id)streaming;
- (void)speakWithPreviewRequest:(id)request reply:(id)reply;
- (void)subscribeWithVoices:(id)voices clientId:(id)id accessoryId:(id)accessoryId reply:(id)reply;
- (void)subscribedVoicesWithClientId:(id)id reply:(id)reply;
@end

@implementation DaemonXPCHandler

- (void)downloadedVoicesMatching:(id)matching reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  matchingCopy = matching;
  selfCopy = self;
  sub_100002584(matching, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)subscribedVoicesWithClientId:(id)id reply:(id)reply
{
  v6 = _Block_copy(reply);
  if (id)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    id = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_subscriptionService);
  selfCopy = self;
  sub_1000027AC(v7, id, sub_1000224C4, v9);
}

- (void)keepActive:(BOOL)active reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  selfCopy = self;
  sub_10001BF60(active, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)speakWithPreviewRequest:(id)request reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_100015D78(requestCopy, sub_100022B24, v7);
}

- (void)cancelWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_10001D484(requestCopy);
}

- (void)signalWithInlineStreaming:(id)streaming
{
  streamingCopy = streaming;
  selfCopy = self;
  sub_100020120(streamingCopy, "Received inline streaming signal %@", &dispatch thunk of InlineStreamingStorage.add(signal:));
}

- (void)forwardWithStreamObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  sub_100020120(objectCopy, "Received inline stream object %@", &dispatch thunk of InlineStreamingStorage.enqueue(streamObject:));
}

- (void)subscribeWithVoices:(id)voices clientId:(id)id accessoryId:(id)accessoryId reply:(id)reply
{
  v8 = _Block_copy(reply);
  type metadata accessor for SynthesisVoice();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (accessoryId)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    accessoryId = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v8);
  selfCopy = self;
  sub_1000202EC(v9, v10, v12, v13, accessoryId, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)adjustVolumeWithAccessoryId:(id)id volume:(float)volume rampTime:(double)time didFinish:(id)finish
{
  v11 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - v13;
  v15 = _Block_copy(finish);
  if (id)
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
  selfCopy = self;
  sub_100021568(v14, v15, volume, time);
  _Block_release(v15);
  _Block_release(v15);

  sub_100001E9C(v14, &qword_100035810, &qword_100027D68);
}

- (void)clearDeviceCacheWithDidFinish:(id)finish
{
  v4 = _Block_copy(finish);
  _Block_copy(v4);
  selfCopy = self;
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