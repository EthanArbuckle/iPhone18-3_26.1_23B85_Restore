@interface HDSPSleepModeStateMachineContext
+ (id)contextWithReason:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HDSPSleepModeStateMachineContext

+ (id)contextWithReason:(unint64_t)a3
{
  v4 = objc_alloc_init(a1);
  v4[4] = a3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = HDSPSleepModeStateMachineContext;
  result = [(HKSPStateMachineContext *)&v5 copyWithZone:a3];
  *(result + 4) = self->_reason;
  return result;
}

@end