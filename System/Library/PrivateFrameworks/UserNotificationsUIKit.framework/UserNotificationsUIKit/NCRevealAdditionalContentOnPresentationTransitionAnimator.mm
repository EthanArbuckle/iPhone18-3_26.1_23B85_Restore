@interface NCRevealAdditionalContentOnPresentationTransitionAnimator
- (void)animateTransition:(id)transition;
@end

@implementation NCRevealAdditionalContentOnPresentationTransitionAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  if (objc_opt_respondsToSelector())
  {
    [transitionCopy __runAlongsideAnimations];
  }

  [transitionCopy completeTransition:1];
}

@end