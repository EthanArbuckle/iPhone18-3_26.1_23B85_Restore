@interface SBBiometricAuthenticationPolicy
- (SBBiometricAuthenticationPolicy)initWithLockOutProvider:(id)provider;
@end

@implementation SBBiometricAuthenticationPolicy

- (SBBiometricAuthenticationPolicy)initWithLockOutProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SBBiometricAuthenticationPolicy;
  v6 = [(SBBiometricAuthenticationPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockOutStatusProvider, provider);
  }

  return v7;
}

@end