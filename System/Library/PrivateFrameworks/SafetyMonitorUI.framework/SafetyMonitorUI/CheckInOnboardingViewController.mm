@interface CheckInOnboardingViewController
- (_TtC15SafetyMonitorUI31CheckInOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15SafetyMonitorUI31CheckInOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueButtonAction;
- (void)notNowButtonAction;
- (void)viewDidLoad;
@end

@implementation CheckInOnboardingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  CheckInOnboardingViewController.viewDidLoad()();
}

- (void)continueButtonAction
{
  selfCopy = self;
  sub_264708018();
}

- (void)notNowButtonAction
{
  selfCopy = self;
  navigationController = [(CheckInOnboardingViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC15SafetyMonitorUI31CheckInOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15SafetyMonitorUI31CheckInOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end