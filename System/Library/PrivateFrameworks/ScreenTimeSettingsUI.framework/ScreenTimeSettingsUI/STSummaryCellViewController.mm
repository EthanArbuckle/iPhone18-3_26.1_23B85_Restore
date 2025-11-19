@interface STSummaryCellViewController
- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithCoder:(id)a3;
- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4;
- (void)updateWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation STSummaryCellViewController

- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4
{
  if (a3)
  {
    sub_264CC45DC();
  }

  sub_264CC374C();
  swift_allocObject();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI27STSummaryCellViewController_bridge) = sub_264CC372C();
  v6.receiver = self;
  v6.super_class = type metadata accessor for STSummaryCellViewController();
  return [(STSummaryCellViewController *)&v6 initWithNibName:0 bundle:0];
}

- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithCoder:(id)a3
{
  result = sub_264CC49FC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_264C8C140();
}

- (void)updateWithUserAltDSID:(id)a3 deviceIdentifier:(id)a4
{
  if (a3)
  {
    sub_264CC45DC();
  }

  v5 = self;
  sub_264CC373C();
}

- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end