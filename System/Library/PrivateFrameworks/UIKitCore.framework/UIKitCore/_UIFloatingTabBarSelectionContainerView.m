@interface _UIFloatingTabBarSelectionContainerView
- (BOOL)_shouldScalePlatter;
- (CGPoint)selectionViewPosition;
- (CGRect)selectionViewBounds;
- (CGRect)selectionViewFrame;
- (_UIFloatingTabBarSelectionContainerView)initWithFrame:(CGRect)a3;
- (void)_updateSelectionViewBounds;
- (void)setSelectionViewBounds:(CGRect)a3;
- (void)setSelectionViewPosition:(CGPoint)a3;
@end

@implementation _UIFloatingTabBarSelectionContainerView

- (_UIFloatingTabBarSelectionContainerView)initWithFrame:(CGRect)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = _UIFloatingTabBarSelectionContainerView;
  v3 = [(UIView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 traitCollection];
    v6 = _UIFloatingTabBarGetPlatformMetrics([v5 userInterfaceIdiom]);

    v7 = objc_opt_new();
    if (_UIFlexiGlassEnabled())
    {
      v8 = [[_UILiquidLensView alloc] initWithRestingBackground:v7];
      liquidLensView = v4->_liquidLensView;
      v4->_liquidLensView = v8;

      [(_UILiquidLensView *)v4->_liquidLensView setWarpsContentBelow:1];
      [(_UILiquidLensView *)v4->_liquidLensView setStyle:1];
      [(UIView *)v4->_liquidLensView setHidden:1];
      [(UIView *)v4 addSubview:v4->_liquidLensView];
      objc_storeStrong(&v4->_selectionView, v4->_liquidLensView);
      v10 = objc_opt_new();
      targetPosition = v4->_targetPosition;
      v4->_targetPosition = v10;
    }

    else
    {
      v12 = [v7 layer];
      [v12 setAllowsEdgeAntialiasing:1];

      v13 = [v7 layer];
      [v13 setShadowPathIsBounds:1];

      [v7 _setOverrideVibrancyTrait:0];
      [v7 setHidden:1];
      [(UIView *)v4 addSubview:v7];
      v14 = v7;
      targetPosition = v4->_selectionView;
      v4->_selectionView = v14;
    }

    v24[0] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v16 = [(UIView *)v4 registerForTraitChanges:v15 withHandler:&__block_literal_global_501];

    v23 = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57___UIFloatingTabBarSelectionContainerView_initWithFrame___block_invoke_2;
    v20[3] = &unk_1E711F288;
    v21 = v4;
    v18 = [(UIView *)v21 registerForTraitChanges:v17 withHandler:v20];
  }

  return v4;
}

- (void)setSelectionViewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_selectionViewBounds = &self->_selectionViewBounds;
  if (!CGRectEqualToRect(a3, self->_selectionViewBounds))
  {
    p_selectionViewBounds->origin.x = x;
    p_selectionViewBounds->origin.y = y;
    p_selectionViewBounds->size.width = width;
    p_selectionViewBounds->size.height = height;

    [(_UIFloatingTabBarSelectionContainerView *)self _updateSelectionViewBounds];
  }
}

- (CGPoint)selectionViewPosition
{
  v2 = [(_UIFloatingTabBarSelectionContainerView *)self selectionView];
  [v2 center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setSelectionViewPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIFloatingTabBarSelectionContainerView *)self selectionView];
  [v6 center];
  v8 = v7;
  v10 = v9;

  if (x != v8 || y != v10)
  {
    v12 = [(_UIFloatingTabBarSelectionContainerView *)self selectionView];
    [v12 setCenter:{x, y}];

    targetPosition = self->_targetPosition;

    [(UIViewFloatAnimatableProperty *)targetPosition setValue:x];
  }
}

- (CGRect)selectionViewFrame
{
  [(_UIFloatingTabBarSelectionContainerView *)self selectionViewBounds];
  v4 = v3;
  v6 = v5;
  [(_UIFloatingTabBarSelectionContainerView *)self selectionViewPosition];
  v8 = round(v7 - v6 * 0.5);
  v10 = round(v9 - v4 * 0.5);
  v11 = v4;
  v12 = v6;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v8;
  result.origin.x = v10;
  return result;
}

- (void)_updateSelectionViewBounds
{
  v3 = [(_UIFloatingTabBarSelectionContainerView *)self liquidLensView];
  v4 = [v3 lifted];

  v5 = [(_UIFloatingTabBarSelectionContainerView *)self selectionView];
  x = self->_selectionViewBounds.origin.x;
  y = self->_selectionViewBounds.origin.y;
  width = self->_selectionViewBounds.size.width;
  height = self->_selectionViewBounds.size.height;
  v10 = v5;
  if (v4)
  {
    *(&width - 2) = CGRectInset(*&x, -8.0, -8.0);
    v5 = v10;
    y = 0.0;
    x = 0.0;
  }

  [v5 setBounds:{x, y, width, height}];
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [v10 layoutIfNeeded];
  }
}

- (BOOL)_shouldScalePlatter
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 valueForNSIntegerTrait:objc_opt_class()] != 0;

  return v3;
}

- (CGRect)selectionViewBounds
{
  x = self->_selectionViewBounds.origin.x;
  y = self->_selectionViewBounds.origin.y;
  width = self->_selectionViewBounds.size.width;
  height = self->_selectionViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end