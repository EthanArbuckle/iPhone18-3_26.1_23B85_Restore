@interface SleepOnboardingFlowController
- (int64_t)hksp_presentationStyle;
@end

@implementation SleepOnboardingFlowController

- (int64_t)hksp_presentationStyle
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_presentationStyle);

  return v3;
}

@end