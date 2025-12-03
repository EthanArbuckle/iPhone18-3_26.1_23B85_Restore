@interface HDSPWakeDetectionStateMachineContext
+ (id)contextWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDSPWakeDetectionStateMachineContext

+ (id)contextWithType:(unint64_t)type
{
  v4 = objc_alloc_init(self);
  v4[4] = type;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = HDSPWakeDetectionStateMachineContext;
  result = [(HKSPStateMachineContext *)&v5 copyWithZone:zone];
  *(result + 4) = self->_type;
  return result;
}

@end