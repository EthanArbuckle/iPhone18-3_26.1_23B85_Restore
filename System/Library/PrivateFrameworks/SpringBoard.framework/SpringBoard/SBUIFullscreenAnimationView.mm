@interface SBUIFullscreenAnimationView
- (SBUIFullscreenAnimationViewDelegate)delegate;
- (void)_notifyDelegateAnimationBeganWithDuration:(double)duration delay:(double)delay;
- (void)_notifyDelegateThatAnimationIsDone;
@end

@implementation SBUIFullscreenAnimationView

- (void)_notifyDelegateAnimationBeganWithDuration:(double)duration delay:(double)delay
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appTransitionView:self animationWillStartWithDuration:duration afterDelay:delay];
}

- (void)_notifyDelegateThatAnimationIsDone
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appTransitionViewAnimationDidStop:self];
}

- (SBUIFullscreenAnimationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end