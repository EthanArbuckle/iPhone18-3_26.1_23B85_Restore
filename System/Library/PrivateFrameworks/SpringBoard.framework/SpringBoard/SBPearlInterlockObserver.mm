@interface SBPearlInterlockObserver
- (SBPearlInterlockObserver)initWithBiometricResource:(id)resource;
- (void)_checkForLockout;
- (void)_fire;
- (void)activate;
- (void)biometricResource:(id)resource observeEvent:(unint64_t)event;
@end

@implementation SBPearlInterlockObserver

- (SBPearlInterlockObserver)initWithBiometricResource:(id)resource
{
  resourceCopy = resource;
  v9.receiver = self;
  v9.super_class = SBPearlInterlockObserver;
  v6 = [(SBPearlInterlockObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biometricResource, resource);
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

- (void)biometricResource:(id)resource observeEvent:(unint64_t)event
{
  resourceCopy = resource;
  if (event == 24 || self->_didSuppressFire)
  {
    v7 = resourceCopy;
    [(SBPearlInterlockObserver *)self _fire];
    resourceCopy = v7;
  }
}

@end