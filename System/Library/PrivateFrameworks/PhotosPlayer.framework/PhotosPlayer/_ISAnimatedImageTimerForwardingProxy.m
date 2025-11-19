@interface _ISAnimatedImageTimerForwardingProxy
- (ISAnimatedImageTimer)_forwardingTarget;
- (void)_displayLinkFire:(id)a3;
@end

@implementation _ISAnimatedImageTimerForwardingProxy

- (ISAnimatedImageTimer)_forwardingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->__forwardingTarget);

  return WeakRetained;
}

- (void)_displayLinkFire:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__forwardingTarget);
  [WeakRetained _animationTimerFired:v4];
}

@end