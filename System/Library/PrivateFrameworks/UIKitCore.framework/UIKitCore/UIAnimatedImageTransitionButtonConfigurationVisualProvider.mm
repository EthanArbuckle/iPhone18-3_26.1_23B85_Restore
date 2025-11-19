@interface UIAnimatedImageTransitionButtonConfigurationVisualProvider
@end

@implementation UIAnimatedImageTransitionButtonConfigurationVisualProvider

uint64_t __103___UIAnimatedImageTransitionButtonConfigurationVisualProvider__transitioningImageViewForConfiguration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  [*(a1 + 32) setBounds:{0.0, 0.0, v4, v5}];
  v6 = *(a1 + 32);

  return [v6 setCenter:{v2 + v4 * 0.5, v3 + v5 * 0.5}];
}

uint64_t __97___UIAnimatedImageTransitionButtonConfigurationVisualProvider__updateImageViewWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v7.a = *MEMORY[0x1E695EFD0];
  *&v7.c = v3;
  *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:&v7];
  [*(a1 + 32) setAlpha:1.0];
  CGAffineTransformMakeScale(&v6, 0.3, 0.3);
  v4 = *(a1 + 40);
  v7 = v6;
  [v4 setTransform:&v7];
  return [*(a1 + 40) setAlpha:0.0];
}

uint64_t __97___UIAnimatedImageTransitionButtonConfigurationVisualProvider__updateImageViewWithConfiguration___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) removeFromSuperview];
    v3 = *(*(v2 + 40) + 264);

    return [v3 setHidden:0];
  }

  return result;
}

@end