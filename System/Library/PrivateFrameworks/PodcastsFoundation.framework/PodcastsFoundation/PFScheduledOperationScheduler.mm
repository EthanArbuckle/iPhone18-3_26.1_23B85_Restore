@interface PFScheduledOperationScheduler
+ (PFScheduledOperationScheduler)weeklyScheduler;
- (PFScheduledOperationScheduler)init;
- (PFScheduledOperationScheduler)initWithSchedule:(id)a3 scheduleStorage:(id)a4;
- (void)evaluateOperationWithIdentifier:(id)a3 evaluationHandler:(id)a4;
@end

@implementation PFScheduledOperationScheduler

+ (PFScheduledOperationScheduler)weeklyScheduler
{
  if (qword_1EDCD26C8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD26D0;

  return v3;
}

- (PFScheduledOperationScheduler)initWithSchedule:(id)a3 scheduleStorage:(id)a4
{
  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return sub_1D9154438(a3, a4, self);
}

- (void)evaluateOperationWithIdentifier:(id)a3 evaluationHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1D917820C();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1D9154538(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (PFScheduledOperationScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end