@interface SIQueryTransport
- (_TtC22SearchIntrospectionKit16SIQueryTransport)init;
- (_TtC22SearchIntrospectionKit16SIQueryTransport)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SIQueryTransport

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  SIQueryTransport.encode(withBSXPCCoder:)(a3);
  swift_unknownObjectRelease();
}

- (_TtC22SearchIntrospectionKit16SIQueryTransport)initWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_264E70680(a3);
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