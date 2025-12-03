@interface CheckInOnboardingFlowViewController
- (_TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController)initWithCoder:(id)coder;
- (_TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation CheckInOnboardingFlowViewController

- (_TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding) = 0;
  result = sub_264785D94();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_26468AB58();
}

- (_TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end