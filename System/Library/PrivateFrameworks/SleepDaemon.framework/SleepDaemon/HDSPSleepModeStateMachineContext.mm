@interface HDSPSleepModeStateMachineContext
+ (id)contextWithReason:(unint64_t)reason;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDSPSleepModeStateMachineContext

+ (id)contextWithReason:(unint64_t)reason
{
  v4 = objc_alloc_init(self);
  v4[4] = reason;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = HDSPSleepModeStateMachineContext;
  result = [(HKSPStateMachineContext *)&v5 copyWithZone:zone];
  *(result + 4) = self->_reason;
  return result;
}

@end