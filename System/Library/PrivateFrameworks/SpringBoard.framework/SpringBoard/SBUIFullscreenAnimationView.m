@interface SBUIFullscreenAnimationView
- (SBUIFullscreenAnimationViewDelegate)delegate;
- (void)_notifyDelegateAnimationBeganWithDuration:(double)a3 delay:(double)a4;
- (void)_notifyDelegateThatAnimationIsDone;
@end

@implementation SBUIFullscreenAnimationView

- (void)_notifyDelegateAnimationBeganWithDuration:(double)a3 delay:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appTransitionView:self animationWillStartWithDuration:a3 afterDelay:a4];
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