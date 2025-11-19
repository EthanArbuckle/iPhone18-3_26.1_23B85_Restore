@interface CheckInOnboardingViewController
- (_TtC15SafetyMonitorUI31CheckInOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC15SafetyMonitorUI31CheckInOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continueButtonAction;
- (void)notNowButtonAction;
- (void)viewDidLoad;
@end

@implementation CheckInOnboardingViewController

- (void)viewDidLoad
{
  v2 = self;
  CheckInOnboardingViewController.viewDidLoad()();
}

- (void)continueButtonAction
{
  v2 = self;
  sub_264708018();
}

- (void)notNowButtonAction
{
  v4 = self;
  v2 = [(CheckInOnboardingViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC15SafetyMonitorUI31CheckInOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15SafetyMonitorUI31CheckInOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end