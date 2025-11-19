@interface SUIKPApplicationSettingsViewController
- (_TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController)initWithCoder:(id)a3;
- (_TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation SUIKPApplicationSettingsViewController

- (_TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController)initWithCoder:(id)a3
{
  result = sub_265894A14();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2658943D0();
}

- (void)setSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  v5 = a3;
  [(SUIKPApplicationSettingsViewController *)&v7 setSpecifier:v5];
  if (v5)
  {
    v6 = [v5 name];
    [v4 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end