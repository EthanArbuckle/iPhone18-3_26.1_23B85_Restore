@interface SIQueryTransport
- (_TtC22SearchIntrospectionKit16SIQueryTransport)init;
- (_TtC22SearchIntrospectionKit16SIQueryTransport)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SIQueryTransport

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SIQueryTransport.encode(withBSXPCCoder:)(coder);
  swift_unknownObjectRelease();
}

- (_TtC22SearchIntrospectionKit16SIQueryTransport)initWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  v4 = sub_264E70680(coder);
  swift_unknownObjectRelease();
  return v4;
}

- (_TtC22SearchIntrospectionKit16SIQueryTransport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end