@interface SBUIMainScreenAnimationController
- (SBDeviceApplicationSceneEntity)fromApplicationSceneEntity;
- (SBDeviceApplicationSceneEntity)toApplicationSceneEntity;
- (SBUIMainScreenAnimationController)initWithTransitionContextProvider:(id)a3;
- (id)_getTransitionWindow;
- (id)_primaryAppOrAnyAppFromSet:(id)a3;
- (id)_windowScene;
- (void)__startAnimation;
- (void)_begin;
- (void)_cleanupAnimation;
- (void)_dismissBannerAnimated:(BOOL)a3;
@end

@implementation SBUIMainScreenAnimationController

- (SBUIMainScreenAnimationController)initWithTransitionContextProvider:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBUIMainScreenAnimationController;
  return [(SBUIWorkspaceAnimationController *)&v4 initWithWorkspaceTransitionRequest:a3];
}

- (SBDeviceApplicationSceneEntity)toApplicationSceneEntity
{
  v3 = [(SBUIAnimationController *)self toApplicationSceneEntities];
  v4 = [(SBUIMainScreenAnimationController *)self _primaryAppOrAnyAppFromSet:v3];

  return v4;
}

- (SBDeviceApplicationSceneEntity)fromApplicationSceneEntity
{
  v3 = [(SBUIAnimationController *)self fromApplicationSceneEntities];
  v4 = [(SBUIMainScreenAnimationController *)self _primaryAppOrAnyAppFromSet:v3];

  return v4;
}

- (id)_getTransitionWindow
{
  v2 = [(SBUIMainScreenAnimationController *)self _windowScene];
  v3 = [v2 homeScreenController];
  v4 = [v3 window];

  return v4;
}

- (id)_primaryAppOrAnyAppFromSet:(id)a3
{
  v3 = a3;
  v4 = [v3 objectsPassingTest:&__block_literal_global_405];
  v5 = [v4 anyObject];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v3 anyObject];
  }

  v7 = v6;

  return v7;
}

- (void)__startAnimation
{
  v3.receiver = self;
  v3.super_class = SBUIMainScreenAnimationController;
  [(SBUIAnimationController *)&v3 __startAnimation];
  if ([(SBUIMainScreenAnimationController *)self _shouldDismissBanner])
  {
    [(SBUIMainScreenAnimationController *)self _dismissBannerAnimated:1];
  }

  [MEMORY[0x277D75D18] _beginSuspendingMotionEffectsForReason:@"Main screen transaction animation"];
  [MEMORY[0x277D75D18] animateWithDuration:&__block_literal_global_12_1 animations:0.25];
}

- (void)_dismissBannerAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [SBApp bannerManager];
  v5 = [(SBUIMainScreenAnimationController *)self _windowScene];
  [v6 dismissAllBannersInWindowScene:v5 animated:v3 reason:@"mainScreenAnimationController"];
}

- (void)_begin
{
  v3 = [(SBUIAnimationController *)self _animationIdentifier];
  v4 = [SBApp bannerManager];
  v5 = [v4 acquireBannerSuppressionAssertionForReason:v3];
  [(SBUIMainScreenAnimationController *)self setBannerSuppressionAssertion:v5];

  if ([(SBUIAnimationController *)self _willAnimate])
  {
    v6 = +[SBWallpaperController sharedInstance];
    v7 = [v6 requireWallpaperWithReason:v3];
    [(SBUIMainScreenAnimationController *)self setWallpaperRequiredAssertion:v7];
  }

  v8.receiver = self;
  v8.super_class = SBUIMainScreenAnimationController;
  [(SBUIAnimationController *)&v8 _begin];
}

- (void)_cleanupAnimation
{
  [MEMORY[0x277D75D18] _endSuspendingMotionEffectsForReason:@"Main screen transaction animation"];
  v3 = [(SBUIMainScreenAnimationController *)self bannerSuppressionAssertion];
  [v3 invalidate];

  [(SBUIMainScreenAnimationController *)self setBannerSuppressionAssertion:0];
  v4 = [(SBUIMainScreenAnimationController *)self wallpaperRequiredAssertion];
  [v4 invalidate];

  [(SBUIMainScreenAnimationController *)self setWallpaperRequiredAssertion:0];
  v7 = [(SBUIMainScreenAnimationController *)self _windowScene];
  v5 = [v7 homeScreenController];
  v6 = [v5 iconManager];
  [v6 clearHighlightedIcon];
}

- (id)_windowScene
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];

  return v3;
}

@end