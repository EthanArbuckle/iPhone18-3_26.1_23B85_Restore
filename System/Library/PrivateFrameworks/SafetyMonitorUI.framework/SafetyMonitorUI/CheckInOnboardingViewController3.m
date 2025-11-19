@interface CheckInOnboardingViewController3
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController3)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController3)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continueButtonAction;
- (void)notNowButtonAction;
- (void)showExampleButtonAction;
- (void)viewDidLoad;
@end

@implementation CheckInOnboardingViewController3

- (void)viewDidLoad
{
  v2 = self;
  CheckInOnboardingViewController3.viewDidLoad()();
}

- (void)continueButtonAction
{
  v2 = self;
  sub_2646E1628();
}

- (void)showExampleButtonAction
{
  v3 = objc_allocWithZone(type metadata accessor for CheckInOnboardingExampleDataViewController());
  v7 = self;
  v4 = CheckInOnboardingExampleDataViewController.init()();
  v5 = [(CheckInOnboardingViewController3 *)v7 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v4 animated:1];
  }
}

- (void)notNowButtonAction
{
  v4 = self;
  v2 = [(CheckInOnboardingViewController3 *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController3)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15SafetyMonitorUI32CheckInOnboardingViewController3)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end