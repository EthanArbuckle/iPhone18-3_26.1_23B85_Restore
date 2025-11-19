@interface HDSPSleepScheduleStateCoordinatorStateMachineContext
+ (id)contextForAlarmTurnedOffWhileFiring;
+ (id)contextWithReason:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HDSPSleepScheduleStateCoordinatorStateMachineContext

+ (id)contextWithReason:(unint64_t)a3
{
  v4 = objc_alloc_init(a1);
  v4[5] = a3;

  return v4;
}

+ (id)contextForAlarmTurnedOffWhileFiring
{
  result = [a1 contextWithReason:7];
  *(result + 32) = 1;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = HDSPSleepScheduleStateCoordinatorStateMachineContext;
  result = [(HKSPStateMachineContext *)&v5 copyWithZone:a3];
  *(result + 5) = self->_reason;
  *(result + 32) = self->_isForAlarmTurnedOffWhileFiring;
  return result;
}

@end