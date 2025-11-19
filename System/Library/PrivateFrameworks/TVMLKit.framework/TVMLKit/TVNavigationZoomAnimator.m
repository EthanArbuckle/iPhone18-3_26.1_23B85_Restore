@interface TVNavigationZoomAnimator
@end

@implementation TVNavigationZoomAnimator

uint64_t __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 1.5, 1.5);
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.0];
}

void __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) removeFromSuperview];
  v4 = [*(a1 + 32) layer];
  [v4 setShouldRasterize:0];
}

uint64_t __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setShouldRasterize:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end