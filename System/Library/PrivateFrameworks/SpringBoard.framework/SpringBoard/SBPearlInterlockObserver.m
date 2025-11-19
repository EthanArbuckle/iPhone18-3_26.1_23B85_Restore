@interface SBPearlInterlockObserver
- (SBPearlInterlockObserver)initWithBiometricResource:(id)a3;
- (void)_checkForLockout;
- (void)_fire;
- (void)activate;
- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4;
@end

@implementation SBPearlInterlockObserver

- (SBPearlInterlockObserver)initWithBiometricResource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBPearlInterlockObserver;
  v6 = [(SBPearlInterlockObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biometricResource, a3);
  }

  return v7;
}

- (void)activate
{
  [(SBUIBiometricResource *)self->_biometricResource addObserver:self];

  [(SBPearlInterlockObserver *)self _checkForLockout];
}

- (void)_checkForLockout
{
  if (self->_didSuppressFire || [(SBUIBiometricResource *)self->_biometricResource biometricLockoutState]== 8)
  {

    [(SBPearlInterlockObserver *)self _fire];
  }
}

- (void)_fire
{
  if (!self->_fired)
  {
    v3 = +[SBLockScreenManager sharedInstanceIfExists];

    if (v3)
    {
      *&self->_fired = 1;
      v5 = objc_alloc_init(SBPearlInterlockAlertItem);
      v4 = +[SBAlertItemsController sharedInstance];
      [v4 activateAlertItem:v5];
    }

    else
    {
      self->_didSuppressFire = 1;
    }
  }
}

- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 24 || self->_didSuppressFire)
  {
    v7 = v6;
    [(SBPearlInterlockObserver *)self _fire];
    v6 = v7;
  }
}

@end