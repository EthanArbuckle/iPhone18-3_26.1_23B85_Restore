@interface STAppLimitViewController
- (_TtC20ScreenTimeSettingsUI24STAppLimitViewController)initWithAltDSID:(id)a3;
- (_TtC20ScreenTimeSettingsUI24STAppLimitViewController)initWithCoder:(id)a3;
- (_TtC20ScreenTimeSettingsUI24STAppLimitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation STAppLimitViewController

- (_TtC20ScreenTimeSettingsUI24STAppLimitViewController)initWithAltDSID:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_264CC45DC();
    sub_264CC339C();
    v6 = sub_264CC338C();
  }

  else
  {
    sub_264CC339C();
    v6 = sub_264CC337C();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI24STAppLimitViewController_userID) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(STAppLimitViewController *)&v8 initWithNibName:0 bundle:0];
}

- (_TtC20ScreenTimeSettingsUI24STAppLimitViewController)initWithCoder:(id)a3
{
  result = sub_264CC49FC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  STAppLimitViewController.viewDidLoad()();
}

- (_TtC20ScreenTimeSettingsUI24STAppLimitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end