@interface _UIFlocker
- (CGPoint)_badgeCenter;
- (CGPoint)badgeLocationInView:(id)a3;
- (_UIFlocker)initWithContainerView:(id)a3;
- (id)_primaryPlatterView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_installGhostPortalForPreview:(id)a3;
- (void)flock;
- (void)install;
- (void)setBadgeValue:(unint64_t)a3;
- (void)unflockToDrag:(BOOL)a3 animated:(BOOL)a4;
- (void)updateFlockLocation;
@end

@implementation _UIFlocker

- (_UIFlocker)initWithContainerView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIFlocker;
  v5 = [(_UIFlocker *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIFlocker *)v5 setContainerView:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(_UIFlocker *)v6 setGhostPortals:v7];
  }

  return v6;
}

- (void)setBadgeValue:(unint64_t)a3
{
  if (self->_badgeValue != a3)
  {
    v16 = v3;
    v17 = v4;
    self->_badgeValue = a3;
    v6 = [(_UIFlocker *)self badge];
    badgeValue = self->_badgeValue;
    if (badgeValue >= 2 && v6 == 0)
    {
      v10 = objc_opt_new();
      [(_UIFlocker *)self setBadge:v10];

      [0 setAlpha:0.0];
      v9 = [(_UIFlocker *)self badge];
      v11 = [v9 layer];
      [v11 setShadowPathIsBounds:1];

      badgeValue = self->_badgeValue;
    }

    else
    {
      v9 = v6;
    }

    [v9 setItemCount:badgeValue];
    [v9 layoutIfNeeded];
    [v9 intrinsicContentSize];
    [v9 setBounds:{0.0, 0.0, v12, v13}];
    [v9 anchorPointForAlignment];
    [v9 setAnchorPoint:?];
    if (![(_UIFlocker *)self isFlocked])
    {
      CGAffineTransformMakeScale(&v15, 0.0, 0.0);
      v14 = v15;
      [v9 setTransform:&v14];
    }
  }
}

- (void)install
{
  v3 = [(_UIFlocker *)self _primaryPlatterView];
  [v3 setCollapsedShadowStyle:0];
  [v3 setExpandedShadowStyle:1];
  [v3 setNeedsLayout];
  [v3 layoutIfNeeded];
  v4 = [v3 collapsedPreview];
  [(_UIFlocker *)self _installGhostPortalForPreview:v4];

  v5 = [(_UIFlocker *)self secondaryPlatterViews];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __21___UIFlocker_install__block_invoke;
  v12 = &unk_1E7104D00;
  v13 = self;
  v14 = v3;
  v6 = v3;
  [v5 enumerateObjectsWithOptions:2 usingBlock:&v9];

  v7 = [v6 superview];
  v8 = [(_UIFlocker *)self badge];
  [v7 insertSubview:v8 aboveSubview:v6];
}

- (void)flock
{
  v3 = [(_UIFlocker *)self itemCount];
  if (v3 >= 2)
  {
    v4 = v3;
    if (![(_UIFlocker *)self isFlocked])
    {
      [(_UIFlocker *)self setIsFlocked:1];
      v5 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:dbl_18A6799F0[([(_UIFlocker *)self settings]& 2) == 0]];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __19___UIFlocker_flock__block_invoke;
      v6[3] = &unk_1E70F6848;
      v6[4] = self;
      v6[5] = fmax(fmin(1.0 - v4 / 5.0 + v4 / 5.0 * 0.6, 1.0), 0.6);
      v6[6] = v4;
      [UIView _animateUsingSpringBehavior:v5 tracking:0 animations:v6 completion:0];
    }
  }
}

- (void)unflockToDrag:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v47 = *MEMORY[0x1E69E9840];
  if ([(_UIFlocker *)self isFlocked])
  {
    [(_UIFlocker *)self setIsFlocked:0];
    v7 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37___UIFlocker_unflockToDrag_animated___block_invoke;
    aBlock[3] = &unk_1E7104D28;
    aBlock[4] = self;
    v45 = v5;
    v8 = v7;
    v44 = v8;
    v9 = _Block_copy(aBlock);
    if (v5)
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __37___UIFlocker_unflockToDrag_animated___block_invoke_2;
      v42[3] = &unk_1E70F3590;
      v42[4] = self;
      [UIView performWithoutAnimation:v42];
    }

    else
    {
      v10 = [(_UIFlocker *)self primaryPlatterPreview];
      v9[2](v9, v10, 1);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = [(_UIFlocker *)self secondaryPlatterViews];
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v9[2](v9, *(*(&v38 + 1) + 8 * i), 0);
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v13);
    }

    v16 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.3];
    [v16 setInertialTargetSmoothing:0.0];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __37___UIFlocker_unflockToDrag_animated___block_invoke_3;
    v35[3] = &unk_1E70F35B8;
    v17 = v8;
    v36 = v17;
    v37 = self;
    v18 = _Block_copy(v35);
    v19 = [(_UIFlocker *)self ghostPortals];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __37___UIFlocker_unflockToDrag_animated___block_invoke_4;
    v32[3] = &unk_1E70F35B8;
    v20 = v19;
    v33 = v20;
    v21 = v17;
    v34 = v21;
    v22 = _Block_copy(v32);
    if (v4)
    {
      v23 = [(_UIFlocker *)self groupCompletion];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = objc_opt_new();
      }

      v26 = v25;

      [v26 addCompletion:v22];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __37___UIFlocker_unflockToDrag_animated___block_invoke_5;
      v30[3] = &unk_1E70F0F78;
      v31 = v18;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __37___UIFlocker_unflockToDrag_animated___block_invoke_6;
      v28[3] = &unk_1E70F3FD8;
      v29 = v26;
      v27 = v26;
      [UIView _animateUsingSpringBehavior:v16 tracking:0 animations:v30 completion:v28];
    }

    else
    {
      v18[2](v18);
      v22[2](v22);
    }
  }
}

- (CGPoint)badgeLocationInView:(id)a3
{
  v4 = a3;
  v5 = [(_UIFlocker *)self badge];
  v6 = [v5 superview];
  v7 = [(_UIFlocker *)self badge];
  [v7 center];
  [v6 convertPoint:v4 toView:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)updateFlockLocation
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(_UIFlocker *)self secondaryPlatterViews];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [(_UIFlocker *)self primaryPlatterPreview];
        v10 = [v9 view];
        [v10 center];
        v12 = v11;
        v14 = v13;
        v15 = [v8 view];
        [v15 setCenter:{v12, v14}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  [(_UIFlocker *)self _badgeCenter];
  v17 = v16;
  v19 = v18;
  v20 = [(_UIFlocker *)self badge];
  [v20 setCenter:{v17, v19}];
}

- (CGPoint)_badgeCenter
{
  v3 = [(_UIFlocker *)self _primaryPlatterView];
  [v3 bounds];
  MaxX = CGRectGetMaxX(v14);
  v5 = [(_UIFlocker *)self badge];
  v6 = [v5 superview];
  [v3 convertPoint:v6 toView:{MaxX, 0.0}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIFlocker *)self containerView];
  v9 = [(_UIFlocker *)self _primaryPlatterView];
  [v8 convertPoint:v9 toView:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = [(_UIFlocker *)self _primaryPlatterView];
  v15 = [v14 hitTest:v7 withEvent:{v11, v13}];

  return v15;
}

- (id)_primaryPlatterView
{
  v2 = [(_UIFlocker *)self primaryPlatterPreview];
  v3 = [v2 view];

  return v3;
}

- (void)_installGhostPortalForPreview:(id)a3
{
  v18 = a3;
  if ([v18 _sourceViewIsInViewHierarchy])
  {
    v4 = [_UIPortalView alloc];
    v5 = [v18 view];
    v6 = [(_UIPortalView *)v4 initWithSourceView:v5];

    [(_UIPortalView *)v6 setHidesSourceView:1];
    [(UIView *)v6 setAlpha:0.0];
    [(_UIPortalView *)v6 setMatchesPosition:1];
    [(_UIPortalView *)v6 setMatchesTransform:1];
    [(_UIPortalView *)v6 setName:@"_UIFlocker.flockGhost"];
    [(_UIPortalView *)v6 _setGeometryFrozen:1];
    [(UIView *)v6 setUserInteractionEnabled:0];
    v7 = [v18 view];
    -[UIView _setFlipsHorizontalAxis:](v6, "_setFlipsHorizontalAxis:", [v7 _flipsHorizontalAxis]);

    v8 = [(_UIFlocker *)self ghostPortals];
    [v8 addObject:v6];

    v9 = [v18 view];
    [v9 _setGhostPortal:v6];

    v10 = [v18 view];
    v11 = [v10 superview];
    v12 = [v18 target];
    v13 = [v12 container];

    v14 = [v18 target];
    v15 = [v14 container];
    v16 = v15;
    if (v11 == v13)
    {
      v17 = [v18 view];
      [v16 insertSubview:v6 aboveSubview:v17];
    }

    else
    {
      [v15 addSubview:v6];
    }
  }
}

@end