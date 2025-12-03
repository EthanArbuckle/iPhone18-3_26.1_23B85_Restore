@interface MediaTransportAudioStream
- (_TtC16ScreenSharingKit25MediaTransportAudioStream)init;
- (void)dealloc;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidStop:(id)stop;
@end

@implementation MediaTransportAudioStream

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState) == 5)
  {
    v3.receiver = self;
    v3.super_class = type metadata accessor for MediaTransportAudioStream();
    v2 = v3.receiver;
    [(MediaTransportAudioStream *)&v3 dealloc];
  }

  else
  {
    sub_264B41874();
    __break(1u);
  }
}

- (_TtC16ScreenSharingKit25MediaTransportAudioStream)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)streamDidRTCPTimeOut:(id)out
{
  outCopy = out;
  selfCopy = self;
  sub_264A2CBC4(out);
}

- (void)streamDidStop:(id)stop
{
  stopCopy = stop;
  selfCopy = self;
  sub_264A2D7D8();
}

@end