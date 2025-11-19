@interface NotificationConsentViewController
- (_TtC9SeymourUI33NotificationConsentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapContinueButton;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation NotificationConsentViewController

- (void)viewDidLoad
{
  v2 = self;
  NotificationConsentViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  NotificationConsentViewController.traitCollectionDidChange(_:)(v9);
}

- (void)didTapContinueButton
{
  v2 = self;
  sub_20BFCB4A4();
}

- (_TtC9SeymourUI33NotificationConsentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end