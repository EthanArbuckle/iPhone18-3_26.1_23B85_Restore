@interface PFScheduledOperationScheduler
+ (PFScheduledOperationScheduler)weeklyScheduler;
- (PFScheduledOperationScheduler)init;
- (PFScheduledOperationScheduler)initWithSchedule:(id)schedule scheduleStorage:(id)storage;
- (void)evaluateOperationWithIdentifier:(id)identifier evaluationHandler:(id)handler;
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

- (PFScheduledOperationScheduler)initWithSchedule:(id)schedule scheduleStorage:(id)storage
{
  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return sub_1D9154438(schedule, storage, self);
}

- (void)evaluateOperationWithIdentifier:(id)identifier evaluationHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1D917820C();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1D9154538(v6, v8, selfCopy, v5);
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