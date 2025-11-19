@interface SBDataRecoveryController
- (BOOL)dataRecoveryRequired;
- (SBDataRecoveryController)init;
- (SBDataRecoveryController)initWithMobileKeyBag:(id)a3;
- (void)performDataRecovery;
@end

@implementation SBDataRecoveryController

- (SBDataRecoveryController)init
{
  v3 = [MEMORY[0x277D65ED8] sharedInstance];
  v4 = [(SBDataRecoveryController *)self initWithMobileKeyBag:v3];

  return v4;
}

- (SBDataRecoveryController)initWithMobileKeyBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBDataRecoveryController;
  v6 = [(SBDataRecoveryController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mobileKeyBag, a3);
  }

  return v7;
}

- (BOOL)dataRecoveryRequired
{
  v2 = [(SBFMobileKeyBag *)self->_mobileKeyBag state];
  v3 = [v2 recoveryRequired];

  return v3;
}

- (void)performDataRecovery
{
  [(SBFMobileKeyBag *)self->_mobileKeyBag lockSkippingGracePeriod:1];

  MEMORY[0x282159B90](@"Force data recovery");
}

@end