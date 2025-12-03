@interface CheckInOnboardingViewController2
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController2)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController2)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueButtonAction;
- (void)notNowButtonAction;
- (void)viewDidLoad;
@end

@implementation CheckInOnboardingViewController2

- (void)viewDidLoad
{
  selfCopy = self;
  CheckInOnboardingViewController2.viewDidLoad()();
}

- (void)continueButtonAction
{
  selfCopy = self;
  sub_2646E0288();
}

- (void)notNowButtonAction
{
  selfCopy = self;
  navigationController = [(CheckInOnboardingViewController2 *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController2)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController2)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end