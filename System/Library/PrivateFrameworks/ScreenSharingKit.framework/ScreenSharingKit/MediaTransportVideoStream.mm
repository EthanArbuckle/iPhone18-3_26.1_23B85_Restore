@interface MediaTransportVideoStream
- (_TtC16ScreenSharingKit25MediaTransportVideoStream)init;
- (void)dealloc;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame;
- (void)screenCapture:(id)capture didUpdateAttributes:(id)attributes error:(id)error;
- (void)serverDidDisconnect:;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
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

- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  sub_264AE913C(frame);
}

- (void)streamDidRTCPTimeOut:(id)out
{
  outCopy = out;
  selfCopy = self;
  sub_264AE94E4(out);
}

- (void)streamDidStop:(id)stop
{
  stopCopy = stop;
  selfCopy = self;
  sub_264AEB2C4();
}

- (void)streamDidServerDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_264AEB574();
}

- (void)screenCapture:(id)capture didUpdateAttributes:(id)attributes error:(id)error
{
  captureCopy = capture;
  attributesCopy = attributes;
  selfCopy = self;
  errorCopy = error;
  sub_264AEBBE0(attributesCopy, error);
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