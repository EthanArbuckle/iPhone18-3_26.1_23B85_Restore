@interface SidebarItem
- (_TtC8Settings11SidebarItem)init;
- (_TtC8Settings11SidebarItem)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SidebarItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21CE33FE8(coderCopy);
}

- (_TtC8Settings11SidebarItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_21CE35E40(coderCopy);

  return v4;
}

- (_TtC8Settings11SidebarItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end