@interface SleepActivityConfigurationModel
- (_TtC13SleepHealthUI31SleepActivityConfigurationModel)init;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
@end

@implementation SleepActivityConfigurationModel

- (_TtC13SleepHealthUI31SleepActivityConfigurationModel)init
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  sub_269D9A8E0();
  v5[2] = self;
  v4 = self;
  sub_269C71EBC(sub_269C74AA4, v5);
}

@end