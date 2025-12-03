@interface NotificationConsentViewController
- (_TtC9SeymourUI33NotificationConsentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapContinueButton;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation NotificationConsentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  NotificationConsentViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  NotificationConsentViewController.traitCollectionDidChange(_:)(v9);
}

- (void)didTapContinueButton
{
  selfCopy = self;
  sub_20BFCB4A4();
}

- (_TtC9SeymourUI33NotificationConsentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end