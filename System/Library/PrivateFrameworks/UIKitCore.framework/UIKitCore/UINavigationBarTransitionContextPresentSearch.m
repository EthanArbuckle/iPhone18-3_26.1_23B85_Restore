@interface UINavigationBarTransitionContextPresentSearch
@end

@implementation UINavigationBarTransitionContextPresentSearch

uint64_t __57___UINavigationBarTransitionContextPresentSearch_animate__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57___UINavigationBarTransitionContextPresentSearch_animate__block_invoke_2;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.7 animations:0.3];
}

void __57___UINavigationBarTransitionContextPresentSearch_animate__block_invoke_3(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57___UINavigationBarTransitionContextPresentSearch_animate__block_invoke_4;
  aBlock[3] = &unk_1E70F7140;
  aBlock[4] = *(a1 + 32);
  v1 = _Block_copy(aBlock);
  v1[2](v1, @"contentView");
  v1[2](v1, @"promptView");
  v1[2](v1, @"weeTitleLabel");
  v1[2](v1, @"largeTitleView");
}

void __57___UINavigationBarTransitionContextPresentSearch_animate__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 72);
  v4 = a2;
  v7 = [v3 valueForKey:v4];
  v5 = [*(*(a1 + 32) + 80) valueForKey:v4];

  v6 = v7;
  if (v7 != v5)
  {
    [v7 setAlpha:0.0];
    v6 = v7;
  }
}

@end