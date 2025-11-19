@interface SBUIPasscodeBiometricResource
- (SBUIPasscodeBiometricResource)initWithBiometricResource:(id)a3 overrideMatchingAssertionFactory:(id)a4;
- (id)acquireMatchingAssertionWithMode:(unint64_t)a3 reason:(id)a4;
@end

@implementation SBUIPasscodeBiometricResource

- (SBUIPasscodeBiometricResource)initWithBiometricResource:(id)a3 overrideMatchingAssertionFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBUIPasscodeBiometricResource;
  v9 = [(SBUIPasscodeBiometricResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_biometricResource, a3);
    objc_storeStrong(&v10->_overrideMatchingAssertionFactory, a4);
  }

  return v10;
}

- (id)acquireMatchingAssertionWithMode:(unint64_t)a3 reason:(id)a4
{
  overrideMatchingAssertionFactory = self->_overrideMatchingAssertionFactory;
  if (!overrideMatchingAssertionFactory)
  {
    overrideMatchingAssertionFactory = self->_biometricResource;
  }

  v6 = [overrideMatchingAssertionFactory acquireMatchingAssertionWithMode:a3 reason:a4];

  return v6;
}

@end