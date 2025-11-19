@interface UINavigationBarTransitionContextPop
@end

@implementation UINavigationBarTransitionContextPop

uint64_t __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke_2;
  v5[3] = &unk_1E70F3590;
  v5[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:0.6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke_3;
  v4[3] = &unk_1E70F3590;
  v4[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke_4;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.5 animations:0.5];
}

void __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 104) setContentAlpha:0.0];
  v4 = [*(*(a1 + 32) + 88) backButton];
  v2 = [v4 visualProvider];
  v3 = [v2 contentView];
  [v3 setAlpha:0.0];
}

void __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke_5(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke_6;
  v3[3] = &unk_1E70F3B20;
  v4 = *(a1 + 32);
  v2 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v2;
  [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.0 animations:0.1];
}

uint64_t __63___UINavigationBarTransitionContextPop__animateScaleTransition__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) setAlpha:0.0];
  CGAffineTransformMakeScale(&v5, 0.7, 0.7);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __59___UINavigationBarTransitionContextPop__animateContentView__block_invoke(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59___UINavigationBarTransitionContextPop__animateContentView__block_invoke_2;
  v13[3] = &unk_1E70F7030;
  v13[4] = v4;
  [v4 _animateInProcessAsTwoPartsWithOverlapIfNecessaryWithKeyframeID:@"contentViewAlpha" fractionComplete:v13 partOne:0 partTwo:a2];
  v5 = *(*(a1 + 32) + 80);
  if (v5)
  {
    v5 = v5[16];
  }

  v6 = v5;

  if (v6)
  {
    v7 = +[_UINavigationBarTransitionContext fadeInFunction];
    *&v8 = a2;
    [v7 _solveForInput:v8];
    v10 = v9;

    v11 = *(a1 + 32);
    if ((*(v11 + 160) & 0x40) != 0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v10;
    }

    [*(v11 + 96) setBackButtonAlpha:v10 titleLabelAlpha:v12 titleViewAlpha:v10 barsAlpha:v10];
  }
}

uint64_t __59___UINavigationBarTransitionContextPop__animateContentView__block_invoke_2(uint64_t a1, double a2)
{
  v4 = +[_UINavigationBarTransitionContext fadeOutFunction];
  *&v5 = a2;
  [v4 _solveForInput:v5];
  v7 = 1.0 - v6;

  v8 = *(a1 + 32);
  v9 = *(v8 + 88);
  if ((*(v8 + 160) & 0x20) != 0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  return [v9 setBackButtonAlpha:v7 titleLabelAlpha:v10 titleViewAlpha:v7 barsAlpha:v7];
}

uint64_t __59___UINavigationBarTransitionContextPop__animateContentView__block_invoke_3(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  v6 = [*(v4 + 88) titleViewGuide];
  [v6 layoutFrame];
  if ((v5 & 2) != 0)
  {
    MinX = CGRectGetMinX(*&v7);
    MaxX = MinX - CGRectGetWidth(*(a1 + 48));
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v7);
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = MaxX * a2 + (1.0 - a2) * *(a1 + 48);
  v17 = *(a1 + 40);

  return [v17 setFrame:{v16, v13, v14, v15}];
}

uint64_t __59___UINavigationBarTransitionContextPop__animateContentView__block_invoke_4(uint64_t a1, double a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v25.size.width = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(*(a1 + 40) + 200);
  v7 = *(*(a1 + 40) + 208);
  rect = v25.size.width;
  v8 = *(*(a1 + 40) + 216);
  v9 = *(*(a1 + 40) + 224);
  v22 = v6;
  v23 = v9;
  v25.origin.x = v3;
  v25.origin.y = v4;
  v25.size.height = v5;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v6;
  v26.origin.y = v7;
  v26.size.width = v8;
  v26.size.height = v9;
  v20 = (1.0 - a2) * MinX + CGRectGetMinX(v26) * a2;
  v27.origin.x = v3;
  v27.origin.y = v4;
  v27.size.width = rect;
  v27.size.height = v5;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = v6;
  v28.origin.y = v7;
  v28.size.width = v8;
  v28.size.height = v9;
  v19 = (1.0 - a2) * MinY + CGRectGetMinY(v28) * a2;
  v29.origin.x = v3;
  v29.origin.y = v4;
  v29.size.width = rect;
  v29.size.height = v5;
  Width = CGRectGetWidth(v29);
  v30.origin.x = v6;
  v30.origin.y = v7;
  v30.size.width = v8;
  v30.size.height = v9;
  v12 = (1.0 - a2) * Width + CGRectGetWidth(v30) * a2;
  v31.origin.x = v3;
  v31.origin.y = v4;
  v31.size.width = rect;
  v31.size.height = v5;
  Height = CGRectGetHeight(v31);
  v32.origin.y = v7;
  v32.origin.x = v22;
  v32.size.width = v8;
  v32.size.height = v23;
  v14 = (1.0 - a2) * Height + CGRectGetHeight(v32) * a2;
  v15 = *(a1 + 32);

  return [v15 setFrame:{v20, v19, v12, v14}];
}

void __62___UINavigationBarTransitionContextPop__animateLargeTitleView__block_invoke(uint64_t a1, double a2)
{
  v4 = +[_UINavigationBarTransitionContext fadeInFunction];
  v5 = a2;
  *&v6 = v5;
  [v4 _solveForInput:v6];
  v8 = v7;

  v9 = +[_UINavigationBarTransitionContext fadeOutFunction];
  *&v10 = a2;
  [v9 _solveForInput:v10];
  v12 = v11;

  v13 = *(a1 + 32);
  if ((*(v13 + 160) & 0x20) != 0)
  {
    [*(v13 + 104) layoutViewsWithOffset:1 useRestingTitleHeight:{(1.0 - a2) * 0.0 + *(a1 + 40) * a2, (1.0 - a2) * 0.0 + *(a1 + 48) * a2}];
    [*(*(a1 + 32) + 104) setContentAlpha:1.0 - v12];
    v13 = *(a1 + 32);
  }

  v14 = v8;
  v15 = *(v13 + 144);
  if (v15 == 1)
  {
    if ((*(v13 + 160) & 0x40) != 0)
    {
      if ((_textDiffersBetweenLargeTitleAndBackButtonLayouts(*(v13 + 112), *(v13 + 88)) & 1) == 0)
      {
        [*(*(a1 + 32) + 112) setContentAlpha:v14];
      }

      v18 = *(a1 + 32);
      v19 = *(v18 + 112);
      if (a2 == 1.0)
      {

        [v19 layoutViewsWithOffset:1 useRestingTitleHeight:{0.0, 0.0}];
      }

      else
      {
        v20 = (v18 + 280);
        v21 = *v20 * a2;
        v22 = v20[1] * a2;
        v23 = *(a1 + 56);
        v24 = *(a1 + 64);

        _updateLargeTitleSpacingForLayout(v19, v23, v24, v21, v22);
      }
    }
  }

  else if (!v15)
  {
    if ((*(v13 + 160) & 0x40) != 0)
    {
      [*(v13 + 112) layoutViewsWithOffset:1 useRestingTitleHeight:{a2 * 0.0 + (1.0 - a2) * *(a1 + 40), a2 * 0.0 + (1.0 - a2) * *(a1 + 48)}];
      v16 = *(*(a1 + 32) + 112);
      v17 = v14;
    }

    else
    {
      v16 = *(v13 + 112);
      v17 = 0.0;
    }

    [v16 setContentAlpha:v17];
  }
}

uint64_t __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke(uint64_t a1, double a2)
{
  v3 = [(_UINavigationBarLayout *)*(*(a1 + 32) + 80) searchBarLayoutFrame];
  v5 = v4;
  v32 = v7;
  v33 = v6;
  v8 = *(a1 + 32);
  v9 = v8[9];
  if (v9 && *(v9 + 115) == 1)
  {
    v10 = [(_UINavigationBarLayout *)v8[9] searchBarLayoutFrame];
  }

  else
  {
    v14 = [v8 isRTL];
    v35.origin.x = v3;
    v35.origin.y = v5;
    v35.size.width = v33;
    v35.size.height = v32;
    Width = CGRectGetWidth(v35);
    if (!v14)
    {
      Width = -Width;
    }

    v10 = v3 + Width;
    v13 = v32;
    v12 = v33;
    v11 = v5;
  }

  v16 = v10;
  v30 = v13;
  v31 = v11;
  v17 = v12;
  MinX = CGRectGetMinX(*&v10);
  v36.origin.x = v3;
  v36.origin.y = v5;
  v36.size.height = v32;
  v36.size.width = v33;
  v25 = v5;
  rect_24 = (1.0 - a2) * MinX + CGRectGetMinX(v36) * a2;
  v37.origin.x = v16;
  v37.origin.y = v31;
  v37.size.width = v17;
  v37.size.height = v30;
  rect_16a = CGRectGetMinY(v37);
  v38.origin.x = v3;
  v38.origin.y = v5;
  v38.size.width = v33;
  v38.size.height = v32;
  rect_16 = (1.0 - a2) * rect_16a + CGRectGetMinY(v38) * a2;
  v39.origin.x = v16;
  v39.origin.y = v31;
  v39.size.width = v17;
  v39.size.height = v30;
  v19 = CGRectGetWidth(v39);
  v40.origin.x = v3;
  v40.origin.y = v25;
  v40.size.width = v33;
  v40.size.height = v32;
  v20 = (1.0 - a2) * v19 + CGRectGetWidth(v40) * a2;
  v41.origin.x = v16;
  v41.size.height = v30;
  v41.origin.y = v31;
  v41.size.width = v17;
  Height = CGRectGetHeight(v41);
  v42.origin.x = v3;
  v42.origin.y = v25;
  v42.size.width = v33;
  v42.size.height = v32;
  v22 = (1.0 - a2) * Height + CGRectGetHeight(v42) * a2;
  v23 = *(a1 + 40);

  return [v23 setFrame:{rect_24, rect_16, v20, v22}];
}

uint64_t __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_2(uint64_t a1)
{
  if (_searchBarHasAlphaTransitionForSlideTransitionLayouts(*(*(a1 + 32) + 72), *(*(a1 + 32) + 80), 0, 1) || (result = [*(a1 + 32) shouldSlideBarBackground], (result & 1) == 0))
  {
    v3 = *(a1 + 40);

    return [v3 setAlpha:0.0];
  }

  return result;
}

void __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _scopeBar];
  v3 = [*(a1 + 40) _scopeBar];
  if (v2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_5;
    v6[3] = &unk_1E70F3590;
    v7 = v2;
    [UIView addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:0.15];
  }

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_6;
    v4[3] = &unk_1E70F3590;
    v5 = v3;
    [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.97 animations:0.03];
  }
}

void __57___UINavigationBarTransitionContextPop__animateSearchBar__block_invoke_7(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) _searchController];
  v5 = [v4 isActive];

  if ((v5 & 1) == 0)
  {
    v6 = [(_UINavigationBarLayout *)*(*(a1 + 40) + 72) searchBarLayoutFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [*(a1 + 40) isRTL];
    v18.origin.x = v6;
    v18.origin.y = v8;
    v18.size.width = v10;
    v18.size.height = v12;
    Width = CGRectGetWidth(v18);
    if (v13)
    {
      Width = -Width;
    }

    v15 = v6 + Width * a2;
    v16 = *(a1 + 32);

    [v16 setFrame:{v15, v8, v10, v12}];
  }
}

@end