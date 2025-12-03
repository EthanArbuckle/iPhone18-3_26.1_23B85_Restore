@interface SUIKPApplicationSettingsViewController
- (_TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController)initWithCoder:(id)coder;
- (_TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation SUIKPApplicationSettingsViewController

- (_TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController)initWithCoder:(id)coder
{
  result = sub_265894A14();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2658943D0();
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  specifierCopy = specifier;
  [(SUIKPApplicationSettingsViewController *)&v7 setSpecifier:specifierCopy];
  if (specifierCopy)
  {
    name = [specifierCopy name];
    [v4 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC20SettingsUIKitPrivate38SUIKPApplicationSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end