@interface STAllActivityViewController
- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithCoder:(id)coder;
- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithUserAltDSID:(id)d deviceIdentifier:(id)identifier;
- (void)updateWithUserAltDSID:(id)d deviceIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation STAllActivityViewController

- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithUserAltDSID:(id)d deviceIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (!d)
  {
    if (!identifier)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_264CC45DC();
  if (identifier)
  {
LABEL_3:
    sub_264CC45DC();
  }

LABEL_5:
  sub_264CC380C();
  swift_allocObject();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI27STAllActivityViewController_bridge) = sub_264CC37FC();
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(STAllActivityViewController *)&v9 initWithNibName:0 bundle:0];
}

- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithCoder:(id)coder
{
  result = sub_264CC49FC();
  __break(1u);
  return result;
}

- (void)updateWithUserAltDSID:(id)d deviceIdentifier:(id)identifier
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9528);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  if (!d)
  {
    if (!identifier)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_264CC45DC();
  if (identifier)
  {
LABEL_3:
    sub_264CC45DC();
  }

LABEL_5:
  selfCopy = self;
  sub_264CC37CC();
  v11 = sub_264CC37DC();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_264CC37EC();
}

- (void)viewDidLoad
{
  selfCopy = self;
  STAllActivityViewController.viewDidLoad()();
}

- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end