@interface SIResponseTransport
- (_TtC22SearchIntrospectionKit19SIResponseTransport)init;
- (_TtC22SearchIntrospectionKit19SIResponseTransport)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SIResponseTransport

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SIResponseTransport.encode(withBSXPCCoder:)(coder);
  swift_unknownObjectRelease();
}

- (_TtC22SearchIntrospectionKit19SIResponseTransport)initWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  v4 = sub_264E731F8(coder);
  swift_unknownObjectRelease();
  return v4;
}

- (_TtC22SearchIntrospectionKit19SIResponseTransport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end