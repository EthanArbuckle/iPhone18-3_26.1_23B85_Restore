@interface SIResponseTransport
- (_TtC22SearchIntrospectionKit19SIResponseTransport)init;
- (_TtC22SearchIntrospectionKit19SIResponseTransport)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SIResponseTransport

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  SIResponseTransport.encode(withBSXPCCoder:)(a3);
  swift_unknownObjectRelease();
}

- (_TtC22SearchIntrospectionKit19SIResponseTransport)initWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_264E731F8(a3);
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