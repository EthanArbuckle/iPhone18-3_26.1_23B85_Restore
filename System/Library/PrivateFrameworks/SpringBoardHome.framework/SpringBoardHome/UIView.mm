@interface UIView
@end

@implementation UIView

uint64_t __88__UIView_SBHAdditions__scaleAndBlurForDuration_initiallyHidden_visibleAlpha_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.001, 0.001);
  [v2 setTransform:&v4];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  return [*(a1 + 32) setAlpha:0.0];
}

uint64_t __88__UIView_SBHAdditions__scaleAndBlurForDuration_initiallyHidden_visibleAlpha_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 40);
    memset(&v8, 0, sizeof(v8));
    v3 = 1.0;
    v4 = 1.0;
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
    v2 = 0.001;
    v3 = 0.001;
    v4 = 0.001;
  }

  CGAffineTransformMakeScale(&v8, v3, v4);
  [*(a1 + 32) setAlpha:v2];
  v5 = *(a1 + 32);
  v7 = v8;
  return [v5 setTransform:&v7];
}

uint64_t __88__UIView_SBHAdditions__scaleAndBlurForDuration_initiallyHidden_visibleAlpha_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end