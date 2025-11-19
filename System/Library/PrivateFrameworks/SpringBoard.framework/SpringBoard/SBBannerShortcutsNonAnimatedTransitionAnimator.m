@interface SBBannerShortcutsNonAnimatedTransitionAnimator
- (void)prepareForTransition:(id)a3;
@end

@implementation SBBannerShortcutsNonAnimatedTransitionAnimator

- (void)prepareForTransition:(id)a3
{
  v3 = [a3 transitionView];
  [v3 setClipsToBounds:0];
}

@end