@interface CheckInOnboardingViewController4
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController4)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController4)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)notNowButtonAction;
- (void)sendCheckIn;
- (void)viewDidLoad;
@end

@implementation CheckInOnboardingViewController4

- (void)viewDidLoad
{
  v2 = self;
  CheckInOnboardingViewController4.viewDidLoad()();
}

- (void)sendCheckIn
{
  v2 = self;
  sub_2646B72E4();
}

- (void)notNowButtonAction
{
  v3 = objc_opt_self();
  v6 = self;
  [v3 setHasUserCompletedOnboarding_];
  v4 = [(CheckInOnboardingViewController4 *)v6 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController4)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController4)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end