@interface NCRevealAdditionalContentOnPresentationTransitionAnimator
- (void)animateTransition:(id)a3;
@end

@implementation NCRevealAdditionalContentOnPresentationTransitionAnimator

- (void)animateTransition:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 __runAlongsideAnimations];
  }

  [v3 completeTransition:1];
}

@end