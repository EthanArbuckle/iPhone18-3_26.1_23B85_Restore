@interface HDSPSleepScheduleStateCoordinatorStateMachineContext
+ (id)contextForAlarmTurnedOffWhileFiring;
+ (id)contextWithReason:(unint64_t)reason;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDSPSleepScheduleStateCoordinatorStateMachineContext

+ (id)contextWithReason:(unint64_t)reason
{
  v4 = objc_alloc_init(self);
  v4[5] = reason;

  return v4;
}

+ (id)contextForAlarmTurnedOffWhileFiring
{
  result = [self contextWithReason:7];
  *(result + 32) = 1;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = HDSPSleepScheduleStateCoordinatorStateMachineContext;
  result = [(HKSPStateMachineContext *)&v5 copyWithZone:zone];
  *(result + 5) = self->_reason;
  *(result + 32) = self->_isForAlarmTurnedOffWhileFiring;
  return result;
}

@end