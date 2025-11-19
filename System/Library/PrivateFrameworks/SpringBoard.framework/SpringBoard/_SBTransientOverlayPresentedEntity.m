@interface _SBTransientOverlayPresentedEntity
- (_SBTransientOverlayPresentedEntity)initWithViewController:(id)a3 window:(id)a4 baseWindowLevel:(double)a5;
- (void)setProximityEnabledAssertion:(id)a3;
@end

@implementation _SBTransientOverlayPresentedEntity

- (_SBTransientOverlayPresentedEntity)initWithViewController:(id)a3 window:(id)a4 baseWindowLevel:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _SBTransientOverlayPresentedEntity;
  v11 = [(_SBTransientOverlayPresentedEntity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_baseWindowLevel = a5;
    objc_storeStrong(&v11->_viewController, a3);
    objc_storeStrong(&v12->_window, a4);
  }

  return v12;
}

- (void)setProximityEnabledAssertion:(id)a3
{
  v5 = a3;
  proximityEnabledAssertion = self->_proximityEnabledAssertion;
  p_proximityEnabledAssertion = &self->_proximityEnabledAssertion;
  v6 = proximityEnabledAssertion;
  if (proximityEnabledAssertion != v5)
  {
    v9 = v5;
    [(BSInvalidatable *)v6 invalidate];
    objc_storeStrong(p_proximityEnabledAssertion, a3);
    v5 = v9;
  }
}

@end