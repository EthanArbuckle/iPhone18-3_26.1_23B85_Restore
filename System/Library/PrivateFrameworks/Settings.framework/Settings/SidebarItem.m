@interface SidebarItem
- (_TtC8Settings11SidebarItem)init;
- (_TtC8Settings11SidebarItem)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SidebarItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21CE33FE8(v4);
}

- (_TtC8Settings11SidebarItem)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_21CE35E40(v3);

  return v4;
}

- (_TtC8Settings11SidebarItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end