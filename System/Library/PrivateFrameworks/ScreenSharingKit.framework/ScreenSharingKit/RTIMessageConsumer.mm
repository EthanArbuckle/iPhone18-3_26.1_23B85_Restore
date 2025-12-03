@interface RTIMessageConsumer
- (_TtC16ScreenSharingKit18RTIMessageConsumer)init;
- (void)inputSystemService:(id)service didCreateInputSession:(id)session;
- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change;
- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin;
@end

@implementation RTIMessageConsumer

- (_TtC16ScreenSharingKit18RTIMessageConsumer)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)inputSystemService:(id)service didCreateInputSession:(id)session
{
  serviceCopy = service;
  sessionCopy = session;

  sub_264A693FC(session);
}

- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin
{
  serviceCopy = service;
  beginCopy = begin;

  sub_264A69594(beginCopy);
}

- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change
{
  serviceCopy = service;
  sessionCopy = session;
  changeCopy = change;

  sub_264A69B10(session);
}

@end