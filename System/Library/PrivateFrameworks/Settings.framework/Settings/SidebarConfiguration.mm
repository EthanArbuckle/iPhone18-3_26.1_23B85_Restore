@interface SidebarConfiguration
- (_TtC8Settings20SidebarConfiguration)init;
- (_TtC8Settings20SidebarConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SidebarConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21CE331F4(coderCopy);
}

- (_TtC8Settings20SidebarConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_21CE35B0C(coderCopy);

  return v4;
}

- (_TtC8Settings20SidebarConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end