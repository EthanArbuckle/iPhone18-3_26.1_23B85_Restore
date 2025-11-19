@interface TPSDeviceCapabilityValidation
- (TPSDeviceCapabilityValidation)initWithQueries:(id)a3;
@end

@implementation TPSDeviceCapabilityValidation

- (TPSDeviceCapabilityValidation)initWithQueries:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSDeviceCapabilityValidation;
  v5 = [(TPSDeviceCapabilityValidation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TPSTargetingValidation *)v5 setTargetContext:v4];
  }

  return v6;
}

@end