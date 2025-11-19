@interface SBDeviceApplicationRemoteTransientOverlayPresentationContext
- (void)dealloc;
@end

@implementation SBDeviceApplicationRemoteTransientOverlayPresentationContext

- (void)dealloc
{
  pipStashAssertion = self->_pipStashAssertion;
  if (pipStashAssertion)
  {
    [(BSInvalidatable *)pipStashAssertion invalidate];
    v4 = self->_pipStashAssertion;
    self->_pipStashAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = SBDeviceApplicationRemoteTransientOverlayPresentationContext;
  [(SBDeviceApplicationRemoteTransientOverlayPresentationContext *)&v5 dealloc];
}

@end