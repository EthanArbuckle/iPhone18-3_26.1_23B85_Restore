@interface CheckInOnboardingViewController3
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController3)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController3)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueButtonAction;
- (void)notNowButtonAction;
- (void)showExampleButtonAction;
- (void)viewDidLoad;
@end

@implementation CheckInOnboardingViewController3

- (void)viewDidLoad
{
  selfCopy = self;
  CheckInOnboardingViewController3.viewDidLoad()();
}

- (void)continueButtonAction
{
  selfCopy = self;
  sub_2646E1628();
}

- (void)showExampleButtonAction
{
  v3 = objc_allocWithZone(type metadata accessor for CheckInOnboardingExampleDataViewController());
  selfCopy = self;
  v4 = CheckInOnboardingExampleDataViewController.init()();
  navigationController = [(CheckInOnboardingViewController3 *)selfCopy navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController pushViewController:v4 animated:1];
  }
}

- (void)notNowButtonAction
{
  selfCopy = self;
  navigationController = [(CheckInOnboardingViewController3 *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController3)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController3)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end