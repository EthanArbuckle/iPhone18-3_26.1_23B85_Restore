@interface CheckInOnboardingViewController4
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController4)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController4)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)notNowButtonAction;
- (void)sendCheckIn;
- (void)viewDidLoad;
@end

@implementation CheckInOnboardingViewController4

- (void)viewDidLoad
{
  selfCopy = self;
  CheckInOnboardingViewController4.viewDidLoad()();
}

- (void)sendCheckIn
{
  selfCopy = self;
  sub_2646B72E4();
}

- (void)notNowButtonAction
{
  v3 = objc_opt_self();
  selfCopy = self;
  [v3 setHasUserCompletedOnboarding_];
  navigationController = [(CheckInOnboardingViewController4 *)selfCopy navigationController];
  if (navigationController)
  {
    v5 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController4)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController4)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end