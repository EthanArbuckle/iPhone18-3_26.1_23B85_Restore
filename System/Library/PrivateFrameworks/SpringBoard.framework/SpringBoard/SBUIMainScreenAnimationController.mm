@interface SBUIMainScreenAnimationController
- (SBDeviceApplicationSceneEntity)fromApplicationSceneEntity;
- (SBDeviceApplicationSceneEntity)toApplicationSceneEntity;
- (SBUIMainScreenAnimationController)initWithTransitionContextProvider:(id)provider;
- (id)_getTransitionWindow;
- (id)_primaryAppOrAnyAppFromSet:(id)set;
- (id)_windowScene;
- (void)__startAnimation;
- (void)_begin;
- (void)_cleanupAnimation;
- (void)_dismissBannerAnimated:(BOOL)animated;
@end

@implementation SBUIMainScreenAnimationController

- (SBUIMainScreenAnimationController)initWithTransitionContextProvider:(id)provider
{
  v4.receiver = self;
  v4.super_class = SBUIMainScreenAnimationController;
  return [(SBUIWorkspaceAnimationController *)&v4 initWithWorkspaceTransitionRequest:provider];
}

- (SBDeviceApplicationSceneEntity)toApplicationSceneEntity
{
  toApplicationSceneEntities = [(SBUIAnimationController *)self toApplicationSceneEntities];
  v4 = [(SBUIMainScreenAnimationController *)self _primaryAppOrAnyAppFromSet:toApplicationSceneEntities];

  return v4;
}

- (SBDeviceApplicationSceneEntity)fromApplicationSceneEntity
{
  fromApplicationSceneEntities = [(SBUIAnimationController *)self fromApplicationSceneEntities];
  v4 = [(SBUIMainScreenAnimationController *)self _primaryAppOrAnyAppFromSet:fromApplicationSceneEntities];

  return v4;
}

- (id)_getTransitionWindow
{
  _windowScene = [(SBUIMainScreenAnimationController *)self _windowScene];
  homeScreenController = [_windowScene homeScreenController];
  window = [homeScreenController window];

  return window;
}

- (id)_primaryAppOrAnyAppFromSet:(id)set
{
  setCopy = set;
  v4 = [setCopy objectsPassingTest:&__block_literal_global_405];
  anyObject = [v4 anyObject];

  if (anyObject)
  {
    anyObject2 = anyObject;
  }

  else
  {
    anyObject2 = [setCopy anyObject];
  }

  v7 = anyObject2;

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

- (void)_dismissBannerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  bannerManager = [SBApp bannerManager];
  _windowScene = [(SBUIMainScreenAnimationController *)self _windowScene];
  [bannerManager dismissAllBannersInWindowScene:_windowScene animated:animatedCopy reason:@"mainScreenAnimationController"];
}

- (void)_begin
{
  _animationIdentifier = [(SBUIAnimationController *)self _animationIdentifier];
  bannerManager = [SBApp bannerManager];
  v5 = [bannerManager acquireBannerSuppressionAssertionForReason:_animationIdentifier];
  [(SBUIMainScreenAnimationController *)self setBannerSuppressionAssertion:v5];

  if ([(SBUIAnimationController *)self _willAnimate])
  {
    v6 = +[SBWallpaperController sharedInstance];
    v7 = [v6 requireWallpaperWithReason:_animationIdentifier];
    [(SBUIMainScreenAnimationController *)self setWallpaperRequiredAssertion:v7];
  }

  v8.receiver = self;
  v8.super_class = SBUIMainScreenAnimationController;
  [(SBUIAnimationController *)&v8 _begin];
}

- (void)_cleanupAnimation
{
  [MEMORY[0x277D75D18] _endSuspendingMotionEffectsForReason:@"Main screen transaction animation"];
  bannerSuppressionAssertion = [(SBUIMainScreenAnimationController *)self bannerSuppressionAssertion];
  [bannerSuppressionAssertion invalidate];

  [(SBUIMainScreenAnimationController *)self setBannerSuppressionAssertion:0];
  wallpaperRequiredAssertion = [(SBUIMainScreenAnimationController *)self wallpaperRequiredAssertion];
  [wallpaperRequiredAssertion invalidate];

  [(SBUIMainScreenAnimationController *)self setWallpaperRequiredAssertion:0];
  _windowScene = [(SBUIMainScreenAnimationController *)self _windowScene];
  homeScreenController = [_windowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  [iconManager clearHighlightedIcon];
}

- (id)_windowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  return embeddedDisplayWindowScene;
}

@end