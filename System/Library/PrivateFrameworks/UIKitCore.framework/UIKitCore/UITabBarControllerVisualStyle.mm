@interface UITabBarControllerVisualStyle
@end

@implementation UITabBarControllerVisualStyle

uint64_t __89___UITabBarControllerVisualStyle_TV__updateOffscreenState_withFocusAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setHiddenAwaitingFocus:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 72);
  v3 = *(a1 + 48);

  return [v2 setEnabled:v3];
}

uint64_t __89___UITabBarControllerVisualStyle_TV__updateOffscreenState_withFocusAnimationCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) _setShadowAlpha:*(a1 + 88)];
  if (*(a1 + 96) == 1)
  {
    [*(a1 + 32) setAlpha:*(a1 + 88)];
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _layoutViewController:v3];
}

uint64_t __89___UITabBarControllerVisualStyle_TV__updateOffscreenState_withFocusAnimationCoordinator___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setHidesShadow:*(a1 + 40)];
  [*(a1 + 32) _setHiddenAwaitingFocus:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);

  return [v3 setHidden:v2];
}

@end