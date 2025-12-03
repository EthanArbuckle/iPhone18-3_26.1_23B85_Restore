@interface TPSDeviceCapabilityValidation
- (TPSDeviceCapabilityValidation)initWithQueries:(id)queries;
@end

@implementation TPSDeviceCapabilityValidation

- (TPSDeviceCapabilityValidation)initWithQueries:(id)queries
{
  queriesCopy = queries;
  v8.receiver = self;
  v8.super_class = TPSDeviceCapabilityValidation;
  v5 = [(TPSDeviceCapabilityValidation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TPSTargetingValidation *)v5 setTargetContext:queriesCopy];
  }

  return v6;
}

@end