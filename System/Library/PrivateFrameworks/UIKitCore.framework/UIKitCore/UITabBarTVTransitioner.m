@interface UITabBarTVTransitioner
@end

@implementation UITabBarTVTransitioner

uint64_t __45___UITabBarTVTransitioner_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 frame];
  v7 = 113.0;
  if (*(a1 + 80))
  {
    v7 = -113.0;
  }

  v15 = CGRectOffset(*&v3, v7, 0.0);
  [v2 setFrame:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);

  return [v8 setFrame:{v9, v10, v11, v12}];
}

uint64_t __45___UITabBarTVTransitioner_animateTransition___block_invoke_4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) finishTransition];
  }

  return result;
}

uint64_t __45___UITabBarTVTransitioner_animateTransition___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

@end