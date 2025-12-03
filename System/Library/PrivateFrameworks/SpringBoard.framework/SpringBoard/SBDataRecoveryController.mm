@interface SBDataRecoveryController
- (BOOL)dataRecoveryRequired;
- (SBDataRecoveryController)init;
- (SBDataRecoveryController)initWithMobileKeyBag:(id)bag;
- (void)performDataRecovery;
@end

@implementation SBDataRecoveryController

- (SBDataRecoveryController)init
{
  mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
  v4 = [(SBDataRecoveryController *)self initWithMobileKeyBag:mEMORY[0x277D65ED8]];

  return v4;
}

- (SBDataRecoveryController)initWithMobileKeyBag:(id)bag
{
  bagCopy = bag;
  v9.receiver = self;
  v9.super_class = SBDataRecoveryController;
  v6 = [(SBDataRecoveryController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mobileKeyBag, bag);
  }

  return v7;
}

- (BOOL)dataRecoveryRequired
{
  state = [(SBFMobileKeyBag *)self->_mobileKeyBag state];
  recoveryRequired = [state recoveryRequired];

  return recoveryRequired;
}

- (void)performDataRecovery
{
  [(SBFMobileKeyBag *)self->_mobileKeyBag lockSkippingGracePeriod:1];

  MEMORY[0x282159B90](@"Force data recovery");
}

@end