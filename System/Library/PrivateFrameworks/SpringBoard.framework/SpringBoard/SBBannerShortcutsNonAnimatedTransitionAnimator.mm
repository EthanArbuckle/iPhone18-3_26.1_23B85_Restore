@interface SBBannerShortcutsNonAnimatedTransitionAnimator
- (void)prepareForTransition:(id)transition;
@end

@implementation SBBannerShortcutsNonAnimatedTransitionAnimator

- (void)prepareForTransition:(id)transition
{
  transitionView = [transition transitionView];
  [transitionView setClipsToBounds:0];
}

@end