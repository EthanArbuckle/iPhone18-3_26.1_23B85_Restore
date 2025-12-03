@interface _SBTransientOverlayPresentedEntity
- (_SBTransientOverlayPresentedEntity)initWithViewController:(id)controller window:(id)window baseWindowLevel:(double)level;
- (void)setProximityEnabledAssertion:(id)assertion;
@end

@implementation _SBTransientOverlayPresentedEntity

- (_SBTransientOverlayPresentedEntity)initWithViewController:(id)controller window:(id)window baseWindowLevel:(double)level
{
  controllerCopy = controller;
  windowCopy = window;
  v14.receiver = self;
  v14.super_class = _SBTransientOverlayPresentedEntity;
  v11 = [(_SBTransientOverlayPresentedEntity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_baseWindowLevel = level;
    objc_storeStrong(&v11->_viewController, controller);
    objc_storeStrong(&v12->_window, window);
  }

  return v12;
}

- (void)setProximityEnabledAssertion:(id)assertion
{
  assertionCopy = assertion;
  proximityEnabledAssertion = self->_proximityEnabledAssertion;
  p_proximityEnabledAssertion = &self->_proximityEnabledAssertion;
  v6 = proximityEnabledAssertion;
  if (proximityEnabledAssertion != assertionCopy)
  {
    v9 = assertionCopy;
    [(BSInvalidatable *)v6 invalidate];
    objc_storeStrong(p_proximityEnabledAssertion, assertion);
    assertionCopy = v9;
  }
}

@end