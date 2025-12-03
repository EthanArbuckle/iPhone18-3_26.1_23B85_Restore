@interface SBUIPasscodeBiometricResource
- (SBUIPasscodeBiometricResource)initWithBiometricResource:(id)resource overrideMatchingAssertionFactory:(id)factory;
- (id)acquireMatchingAssertionWithMode:(unint64_t)mode reason:(id)reason;
@end

@implementation SBUIPasscodeBiometricResource

- (SBUIPasscodeBiometricResource)initWithBiometricResource:(id)resource overrideMatchingAssertionFactory:(id)factory
{
  resourceCopy = resource;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = SBUIPasscodeBiometricResource;
  v9 = [(SBUIPasscodeBiometricResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_biometricResource, resource);
    objc_storeStrong(&v10->_overrideMatchingAssertionFactory, factory);
  }

  return v10;
}

- (id)acquireMatchingAssertionWithMode:(unint64_t)mode reason:(id)reason
{
  overrideMatchingAssertionFactory = self->_overrideMatchingAssertionFactory;
  if (!overrideMatchingAssertionFactory)
  {
    overrideMatchingAssertionFactory = self->_biometricResource;
  }

  v6 = [overrideMatchingAssertionFactory acquireMatchingAssertionWithMode:mode reason:reason];

  return v6;
}

@end