@interface MultiChoiceTray.LegacyHeader
- (RUIElement)parent;
- (_TtCV8RemoteUI15MultiChoiceTray12LegacyHeader)init;
- (_TtCV8RemoteUI15MultiChoiceTray12LegacyHeader)initWithAttributes:(id)a3 parent:(id)a4;
- (id)staticFunctions;
@end

@implementation MultiChoiceTray.LegacyHeader

- (RUIElement)parent
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x60);
  v3 = self;
  v4 = v2();

  return v4;
}

- (id)staticFunctions
{
  sub_21B9EB658();
  sub_21B9BDFC0(0, &qword_27CD9DCC8);
  v2 = sub_21BA87EFC();

  return v2;
}

- (_TtCV8RemoteUI15MultiChoiceTray12LegacyHeader)initWithAttributes:(id)a3 parent:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCV8RemoteUI15MultiChoiceTray12LegacyHeader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end