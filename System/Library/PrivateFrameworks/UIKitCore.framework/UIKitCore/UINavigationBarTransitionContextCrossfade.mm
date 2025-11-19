@interface UINavigationBarTransitionContextCrossfade
@end

@implementation UINavigationBarTransitionContextCrossfade

void __65___UINavigationBarTransitionContextCrossfade__animateContentView__block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 88) setContentHidden:1];
    v3 = [*(*(a1 + 32) + 88) augmentedTitleView];
    [v3 _performNavigationBarTransition:2 willBeDisplayed:0];
  }
}

void __65___UINavigationBarTransitionContextCrossfade__animateContentView__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 96) setBackButtonHidden:0 titleLabelHidden:(*(*(a1 + 32) + 160) >> 6) & 1 titleViewHidden:0 barsHidden:0];
    v3 = [*(*(a1 + 32) + 96) augmentedTitleView];
    [v3 _performNavigationBarTransition:2 willBeDisplayed:1];
  }
}

uint64_t __68___UINavigationBarTransitionContextCrossfade__animateLargeTitleView__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 160) & 0x20) != 0)
  {
    return [*(v1 + 104) setContentHidden:1];
  }

  return result;
}

uint64_t __68___UINavigationBarTransitionContextCrossfade__animateLargeTitleView__block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 160) & 0x40) != 0)
  {
    return [*(v1 + 112) setContentHidden:0];
  }

  return result;
}

void __63___UINavigationBarTransitionContextCrossfade__animateSearchBar__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  if (v1)
  {
    v1 = v1[30];
  }

  v2 = v1;
  [v2 setAlpha:0.0];
}

void __63___UINavigationBarTransitionContextCrossfade__animateSearchBar__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v2 = v2[30];
  }

  v3 = v2;
  [v3 setAlpha:1.0];

  v4 = [(_UINavigationBarLayout *)*(*(a1 + 32) + 80) searchBarLayoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(*(a1 + 32) + 80);
  if (v11)
  {
    v11 = v11[30];
  }

  v12 = v11;
  [v12 setFrame:{v4, v6, v8, v10}];
}

void __63___UINavigationBarTransitionContextCrossfade__animateSearchBar__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  if (v1)
  {
    v1 = v1[30];
  }

  v2 = v1;
  [v2 setAlpha:0.0];
}

void __63___UINavigationBarTransitionContextCrossfade__animateSearchBar__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  if (v1)
  {
    v1 = v1[30];
  }

  v2 = v1;
  [v2 setAlpha:1.0];
}

@end