@interface STSummaryCellViewController
- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithCoder:(id)coder;
- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithUserAltDSID:(id)d deviceIdentifier:(id)identifier;
- (void)updateWithUserAltDSID:(id)d deviceIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation STSummaryCellViewController

- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithUserAltDSID:(id)d deviceIdentifier:(id)identifier
{
  if (d)
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

- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithCoder:(id)coder
{
  result = sub_264CC49FC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_264C8C140();
}

- (void)updateWithUserAltDSID:(id)d deviceIdentifier:(id)identifier
{
  if (d)
  {
    sub_264CC45DC();
  }

  selfCopy = self;
  sub_264CC373C();
}

- (_TtC20ScreenTimeSettingsUI27STSummaryCellViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end