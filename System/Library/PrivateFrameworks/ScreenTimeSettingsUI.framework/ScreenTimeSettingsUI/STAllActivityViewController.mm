@interface STAllActivityViewController
- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithCoder:(id)a3;
- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4;
- (void)updateWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation STAllActivityViewController

- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_264CC45DC();
  if (a4)
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

- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithCoder:(id)a3
{
  result = sub_264CC49FC();
  __break(1u);
  return result;
}

- (void)updateWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9528);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_264CC45DC();
  if (a4)
  {
LABEL_3:
    sub_264CC45DC();
  }

LABEL_5:
  v10 = self;
  sub_264CC37CC();
  v11 = sub_264CC37DC();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_264CC37EC();
}

- (void)viewDidLoad
{
  v2 = self;
  STAllActivityViewController.viewDidLoad()();
}

- (_TtC20ScreenTimeSettingsUI27STAllActivityViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end