@interface SidebarConfiguration
- (_TtC8Settings20SidebarConfiguration)init;
- (_TtC8Settings20SidebarConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SidebarConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21CE331F4(v4);
}

- (_TtC8Settings20SidebarConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_21CE35B0C(v3);

  return v4;
}

- (_TtC8Settings20SidebarConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end