@interface _ISAnimatedImageTimerForwardingProxy
- (ISAnimatedImageTimer)_forwardingTarget;
- (void)_displayLinkFire:(id)fire;
@end

@implementation _ISAnimatedImageTimerForwardingProxy

- (ISAnimatedImageTimer)_forwardingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->__forwardingTarget);

  return WeakRetained;
}

- (void)_displayLinkFire:(id)fire
{
  fireCopy = fire;
  WeakRetained = objc_loadWeakRetained(&self->__forwardingTarget);
  [WeakRetained _animationTimerFired:fireCopy];
}

@end