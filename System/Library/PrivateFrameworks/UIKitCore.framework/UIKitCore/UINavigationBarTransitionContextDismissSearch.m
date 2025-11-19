@interface UINavigationBarTransitionContextDismissSearch
@end

@implementation UINavigationBarTransitionContextDismissSearch

uint64_t __57___UINavigationBarTransitionContextDismissSearch_animate__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57___UINavigationBarTransitionContextDismissSearch_animate__block_invoke_2;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.0 animations:0.3];
}

uint64_t __57___UINavigationBarTransitionContextDismissSearch_animate__block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v2 = v2[16];
  }

  v3 = v2;
  [v3 setAlpha:1.0];

  v4 = *(*(a1 + 32) + 80);
  if (v4)
  {
    v4 = v4[15];
  }

  v5 = v4;
  [v5 setAlpha:1.0];

  v6 = *(*(a1 + 32) + 80);
  if (v6)
  {
    v6 = v6[29];
  }

  v7 = v6;
  [v7 setAlpha:1.0];

  v8 = *(a1 + 40);

  return [v8 setAlpha:1.0];
}

@end