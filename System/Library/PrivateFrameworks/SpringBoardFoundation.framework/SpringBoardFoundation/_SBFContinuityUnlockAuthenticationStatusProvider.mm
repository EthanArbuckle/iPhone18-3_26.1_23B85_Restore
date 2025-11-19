@interface _SBFContinuityUnlockAuthenticationStatusProvider
- (BOOL)isAuthenticated;
- (BOOL)isAuthenticatedCached;
- (_SBFContinuityUnlockAuthenticationStatusProvider)initWithMobileKeyBag:(id)a3 underlyingProvider:(id)a4;
- (uint64_t)_isContinuityUnlocked;
@end

@implementation _SBFContinuityUnlockAuthenticationStatusProvider

- (_SBFContinuityUnlockAuthenticationStatusProvider)initWithMobileKeyBag:(id)a3 underlyingProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _SBFContinuityUnlockAuthenticationStatusProvider;
  v9 = [(_SBFContinuityUnlockAuthenticationStatusProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keybag, a3);
    objc_storeStrong(&v10->_underlyingProvider, a4);
  }

  return v10;
}

- (BOOL)isAuthenticated
{
  if (([(SBFAuthenticationStatusProvider *)self->_underlyingProvider isAuthenticated]& 1) != 0)
  {
    return 1;
  }

  keybag = self->_keybag;

  return [(SBFMobileKeyBag *)keybag isContinuityUnlocked];
}

- (BOOL)isAuthenticatedCached
{
  if (([(SBFAuthenticationStatusProvider *)self->_underlyingProvider isAuthenticatedCached]& 1) != 0)
  {
    return 1;
  }

  keybag = self->_keybag;

  return [(SBFMobileKeyBag *)keybag isContinuityUnlocked];
}

- (uint64_t)_isContinuityUnlocked
{
  if (result)
  {
    return [*(result + 8) isContinuityUnlocked];
  }

  return result;
}

@end