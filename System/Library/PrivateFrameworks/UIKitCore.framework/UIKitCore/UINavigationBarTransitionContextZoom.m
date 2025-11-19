@interface UINavigationBarTransitionContextZoom
@end

@implementation UINavigationBarTransitionContextZoom

void __48___UINavigationBarTransitionContextZoom_prepare__block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = [v11 snapshotViewAfterScreenUpdates:0];
  [v11 setHidden:1];

  [v12 setFrame:{a3, a4, a5, a6}];
  [*(*(a1 + 32) + 8) addSubview:v12];
  [*(a1 + 32) _addTemporaryView:v12];
}

void __48___UINavigationBarTransitionContextZoom_prepare__block_invoke_2(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v20 = [v11 snapshotViewAfterScreenUpdates:0];
  [v11 setHidden:1];

  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  v23 = CGRectOffset(v22, 0.0, *(a1 + 40));
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  [v20 frame];
  if (a5 == v17 && a6 == v16)
  {
    [v20 setFrame:{x, y, width, height}];
    [*(*(a1 + 32) + 64) addSubview:v20];
  }

  else
  {
    v19 = [[UIView alloc] initWithFrame:x, y, width, height];
    [(UIView *)v19 setClipsToBounds:1];
    [(UIView *)v19 addSubview:v20];

    v20 = v19;
    [*(*(a1 + 32) + 64) addSubview:v19];
  }

  [*(a1 + 32) _addTemporaryView:v20];
}

void __58___UINavigationBarTransitionContextZoom__animateSearchBar__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  if (v1)
  {
    v1 = v1[30];
  }

  v2 = v1;
  [v2 setAlpha:0.0];
}

void __58___UINavigationBarTransitionContextZoom__animateSearchBar__block_invoke_2(uint64_t a1)
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

void __58___UINavigationBarTransitionContextZoom__animateSearchBar__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  if (v1)
  {
    v1 = v1[30];
  }

  v2 = v1;
  [v2 setAlpha:0.0];
}

void __58___UINavigationBarTransitionContextZoom__animateSearchBar__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  if (v1)
  {
    v1 = v1[30];
  }

  v2 = v1;
  [v2 setAlpha:1.0];
}

id __63___UINavigationBarTransitionContextZoom__animateBackgroundView__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = _UINavigationBarTransitionContextZoom;
  return objc_msgSendSuper2(&v2, sel__animateBackgroundView);
}

void __48___UINavigationBarTransitionContextZoom_animate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _animateContentView];
  [*(a1 + 32) _animateLargeTitleView];
  [*(a1 + 32) _animateSearchBar];
  [(_UINavigationBarTransitionContext *)*(a1 + 32) _animatePalettes];
  v2 = *(a1 + 32);
  if (*(v2 + 160))
  {
    [v2 _insertTemporaryBackgroundForLayout:*(v2 + 80)];
    [*(*(a1 + 32) + 8) frame];
    v5 = *(a1 + 32);
    v4 = *(v5 + 80);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48___UINavigationBarTransitionContextZoom_animate__block_invoke_2;
    v8[3] = &unk_1E70F70F8;
    v8[5] = v6;
    v8[4] = v5;
    v3 = v8;
  }

  else
  {
    v3 = &__block_literal_global_328;
    v4 = *(v2 + 80);
  }

  [(_UINavigationBarLayout *)v4 iterateLayoutViews:v3];
  v7 = [*(*(a1 + 32) + 64) layer];
  [v7 setAllowsHitTesting:0];
}

void __48___UINavigationBarTransitionContextZoom_animate__block_invoke_2(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v12 = [[_UIPortalView alloc] initWithSourceView:v11];
  [v11 setHidden:0];

  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  v15 = CGRectOffset(v14, 0.0, *(a1 + 40));
  [(_UIPortalView *)v12 setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
  [(_UIPortalView *)v12 setHidesSourceView:1];
  [(_UIPortalView *)v12 setAllowsHitTesting:1];
  [(_UIPortalView *)v12 setForwardsClientHitTestingToSourceView:1];
  [(UIView *)v12 setClipsToBounds:1];
  [*(*(a1 + 32) + 64) addSubview:v12];
  [*(a1 + 32) _addTemporaryView:v12];
}

uint64_t __63___UINavigationBarTransitionContextZoom_prepareForInterruption__block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _cleanupZoomContent];
}

@end