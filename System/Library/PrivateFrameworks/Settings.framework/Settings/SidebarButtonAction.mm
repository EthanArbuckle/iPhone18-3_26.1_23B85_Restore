@interface SidebarButtonAction
- (_TtC8Settings19SidebarButtonAction)init;
- (_TtC8Settings19SidebarButtonAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SidebarButtonAction

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Settings19SidebarButtonAction_action);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_21CE6CC20();
  [coderCopy encodeInteger:v4 forKey:v6];
}

- (_TtC8Settings19SidebarButtonAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_21CE35A4C(coderCopy);

  return v4;
}

- (_TtC8Settings19SidebarButtonAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end