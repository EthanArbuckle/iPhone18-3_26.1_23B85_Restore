@interface SidebarButtonAction
- (_TtC8Settings19SidebarButtonAction)init;
- (_TtC8Settings19SidebarButtonAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SidebarButtonAction

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Settings19SidebarButtonAction_action);
  v5 = a3;
  v7 = self;
  v6 = sub_21CE6CC20();
  [v5 encodeInteger:v4 forKey:v6];
}

- (_TtC8Settings19SidebarButtonAction)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_21CE35A4C(v3);

  return v4;
}

- (_TtC8Settings19SidebarButtonAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end