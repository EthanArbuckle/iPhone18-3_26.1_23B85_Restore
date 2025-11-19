@interface MediaTransportVideoStream
- (_TtC16ScreenSharingKit25MediaTransportVideoStream)init;
- (void)dealloc;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3;
- (void)screenCapture:(id)a3 didUpdateAttributes:(id)a4 error:(id)a5;
- (void)serverDidDisconnect:;
- (void)streamDidRTCPTimeOut:(id)a3;
- (void)streamDidServerDie:(id)a3;
- (void)streamDidStop:(id)a3;
@end

@implementation MediaTransportVideoStream

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState) == 5)
  {
    v3.receiver = self;
    v3.super_class = type metadata accessor for MediaTransportVideoStream();
    v2 = v3.receiver;
    [(MediaTransportVideoStream *)&v3 dealloc];
  }

  else
  {
    sub_264B41874();
    __break(1u);
  }
}

- (_TtC16ScreenSharingKit25MediaTransportVideoStream)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_264AE913C(a3);
}

- (void)streamDidRTCPTimeOut:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_264AE94E4(a3);
}

- (void)streamDidStop:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264AEB2C4();
}

- (void)streamDidServerDie:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264AEB574();
}

- (void)screenCapture:(id)a3 didUpdateAttributes:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_264AEBBE0(v9, a5);
}

- (void)serverDidDisconnect:
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71D0);
  oslog = sub_264B40944();
  v1 = sub_264B414B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v1, "ScreenCapture serverDidDisconnect", v2, 2u);
    MEMORY[0x266749940](v2, -1, -1);
  }
}

@end