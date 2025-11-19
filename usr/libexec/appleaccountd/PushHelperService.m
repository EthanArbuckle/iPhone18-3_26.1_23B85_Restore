@interface PushHelperService
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connectionDidReconnect:;
@end

@implementation PushHelperService

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_1002C7DF0(a3, v9, v11);
  sub_100015D58(v9, v11);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1002C8130(a3, a4);
}

- (void)connectionDidReconnect:
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAA40);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "AA PushHelperService got reconnected to APS", v2, 2u);
  }
}

@end