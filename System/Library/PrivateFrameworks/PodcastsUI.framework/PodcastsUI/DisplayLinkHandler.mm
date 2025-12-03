@interface DisplayLinkHandler
- (_TtC10PodcastsUIP33_F2E0E53B2EE06FB9F5D0B47C18CD8DEC18DisplayLinkHandler)init;
- (void)handleDisplayLinkFired:(id)fired;
@end

@implementation DisplayLinkHandler

- (void)handleDisplayLinkFired:(id)fired
{
  if (fired)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC10PodcastsUIP33_F2E0E53B2EE06FB9F5D0B47C18CD8DEC18DisplayLinkHandler__handler);
    selfCopy = self;
    swift_unknownObjectRetain();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v3(v5);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC10PodcastsUIP33_F2E0E53B2EE06FB9F5D0B47C18CD8DEC18DisplayLinkHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end