@interface _UIFlocker
- (CGPoint)_badgeCenter;
- (CGPoint)badgeLocationInView:(id)view;
- (_UIFlocker)initWithContainerView:(id)view;
- (id)_primaryPlatterView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_installGhostPortalForPreview:(id)preview;
- (void)flock;
- (void)install;
- (void)setBadgeValue:(unint64_t)value;
- (void)unflockToDrag:(BOOL)drag animated:(BOOL)animated;
- (void)updateFlockLocation;
@end

@implementation _UIFlocker

- (_UIFlocker)initWithContainerView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIFlocker;
  v5 = [(_UIFlocker *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIFlocker *)v5 setContainerView:viewCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(_UIFlocker *)v6 setGhostPortals:array];
  }

  return v6;
}

- (void)setBadgeValue:(unint64_t)value
{
  if (self->_badgeValue != value)
  {
    v16 = v3;
    v17 = v4;
    self->_badgeValue = value;
    badge = [(_UIFlocker *)self badge];
    badgeValue = self->_badgeValue;
    if (badgeValue >= 2 && badge == 0)
    {
      v10 = objc_opt_new();
      [(_UIFlocker *)self setBadge:v10];

      [0 setAlpha:0.0];
      badge2 = [(_UIFlocker *)self badge];
      layer = [badge2 layer];
      [layer setShadowPathIsBounds:1];

      badgeValue = self->_badgeValue;
    }

    else
    {
      badge2 = badge;
    }

    [badge2 setItemCount:badgeValue];
    [badge2 layoutIfNeeded];
    [badge2 intrinsicContentSize];
    [badge2 setBounds:{0.0, 0.0, v12, v13}];
    [badge2 anchorPointForAlignment];
    [badge2 setAnchorPoint:?];
    if (![(_UIFlocker *)self isFlocked])
    {
      CGAffineTransformMakeScale(&v15, 0.0, 0.0);
      v14 = v15;
      [badge2 setTransform:&v14];
    }
  }
}

- (void)install
{
  _primaryPlatterView = [(_UIFlocker *)self _primaryPlatterView];
  [_primaryPlatterView setCollapsedShadowStyle:0];
  [_primaryPlatterView setExpandedShadowStyle:1];
  [_primaryPlatterView setNeedsLayout];
  [_primaryPlatterView layoutIfNeeded];
  collapsedPreview = [_primaryPlatterView collapsedPreview];
  [(_UIFlocker *)self _installGhostPortalForPreview:collapsedPreview];

  secondaryPlatterViews = [(_UIFlocker *)self secondaryPlatterViews];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __21___UIFlocker_install__block_invoke;
  v12 = &unk_1E7104D00;
  selfCopy = self;
  v14 = _primaryPlatterView;
  v6 = _primaryPlatterView;
  [secondaryPlatterViews enumerateObjectsWithOptions:2 usingBlock:&v9];

  superview = [v6 superview];
  badge = [(_UIFlocker *)self badge];
  [superview insertSubview:badge aboveSubview:v6];
}

- (void)flock
{
  itemCount = [(_UIFlocker *)self itemCount];
  if (itemCount >= 2)
  {
    v4 = itemCount;
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

- (void)unflockToDrag:(BOOL)drag animated:(BOOL)animated
{
  animatedCopy = animated;
  dragCopy = drag;
  v47 = *MEMORY[0x1E69E9840];
  if ([(_UIFlocker *)self isFlocked])
  {
    [(_UIFlocker *)self setIsFlocked:0];
    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37___UIFlocker_unflockToDrag_animated___block_invoke;
    aBlock[3] = &unk_1E7104D28;
    aBlock[4] = self;
    v45 = dragCopy;
    v8 = array;
    v44 = v8;
    v9 = _Block_copy(aBlock);
    if (dragCopy)
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
      primaryPlatterPreview = [(_UIFlocker *)self primaryPlatterPreview];
      v9[2](v9, primaryPlatterPreview, 1);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    secondaryPlatterViews = [(_UIFlocker *)self secondaryPlatterViews];
    v12 = [secondaryPlatterViews countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(secondaryPlatterViews);
          }

          v9[2](v9, *(*(&v38 + 1) + 8 * i), 0);
        }

        v13 = [secondaryPlatterViews countByEnumeratingWithState:&v38 objects:v46 count:16];
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
    selfCopy = self;
    v18 = _Block_copy(v35);
    ghostPortals = [(_UIFlocker *)self ghostPortals];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __37___UIFlocker_unflockToDrag_animated___block_invoke_4;
    v32[3] = &unk_1E70F35B8;
    v20 = ghostPortals;
    v33 = v20;
    v21 = v17;
    v34 = v21;
    v22 = _Block_copy(v32);
    if (animatedCopy)
    {
      groupCompletion = [(_UIFlocker *)self groupCompletion];
      v24 = groupCompletion;
      if (groupCompletion)
      {
        v25 = groupCompletion;
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

- (CGPoint)badgeLocationInView:(id)view
{
  viewCopy = view;
  badge = [(_UIFlocker *)self badge];
  superview = [badge superview];
  badge2 = [(_UIFlocker *)self badge];
  [badge2 center];
  [superview convertPoint:viewCopy toView:?];
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
  secondaryPlatterViews = [(_UIFlocker *)self secondaryPlatterViews];
  v4 = [secondaryPlatterViews countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(secondaryPlatterViews);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        primaryPlatterPreview = [(_UIFlocker *)self primaryPlatterPreview];
        view = [primaryPlatterPreview view];
        [view center];
        v12 = v11;
        v14 = v13;
        view2 = [v8 view];
        [view2 setCenter:{v12, v14}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [secondaryPlatterViews countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  [(_UIFlocker *)self _badgeCenter];
  v17 = v16;
  v19 = v18;
  badge = [(_UIFlocker *)self badge];
  [badge setCenter:{v17, v19}];
}

- (CGPoint)_badgeCenter
{
  _primaryPlatterView = [(_UIFlocker *)self _primaryPlatterView];
  [_primaryPlatterView bounds];
  MaxX = CGRectGetMaxX(v14);
  badge = [(_UIFlocker *)self badge];
  superview = [badge superview];
  [_primaryPlatterView convertPoint:superview toView:{MaxX, 0.0}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  containerView = [(_UIFlocker *)self containerView];
  _primaryPlatterView = [(_UIFlocker *)self _primaryPlatterView];
  [containerView convertPoint:_primaryPlatterView toView:{x, y}];
  v11 = v10;
  v13 = v12;

  _primaryPlatterView2 = [(_UIFlocker *)self _primaryPlatterView];
  v15 = [_primaryPlatterView2 hitTest:eventCopy withEvent:{v11, v13}];

  return v15;
}

- (id)_primaryPlatterView
{
  primaryPlatterPreview = [(_UIFlocker *)self primaryPlatterPreview];
  view = [primaryPlatterPreview view];

  return view;
}

- (void)_installGhostPortalForPreview:(id)preview
{
  previewCopy = preview;
  if ([previewCopy _sourceViewIsInViewHierarchy])
  {
    v4 = [_UIPortalView alloc];
    view = [previewCopy view];
    v6 = [(_UIPortalView *)v4 initWithSourceView:view];

    [(_UIPortalView *)v6 setHidesSourceView:1];
    [(UIView *)v6 setAlpha:0.0];
    [(_UIPortalView *)v6 setMatchesPosition:1];
    [(_UIPortalView *)v6 setMatchesTransform:1];
    [(_UIPortalView *)v6 setName:@"_UIFlocker.flockGhost"];
    [(_UIPortalView *)v6 _setGeometryFrozen:1];
    [(UIView *)v6 setUserInteractionEnabled:0];
    view2 = [previewCopy view];
    -[UIView _setFlipsHorizontalAxis:](v6, "_setFlipsHorizontalAxis:", [view2 _flipsHorizontalAxis]);

    ghostPortals = [(_UIFlocker *)self ghostPortals];
    [ghostPortals addObject:v6];

    view3 = [previewCopy view];
    [view3 _setGhostPortal:v6];

    view4 = [previewCopy view];
    superview = [view4 superview];
    target = [previewCopy target];
    container = [target container];

    target2 = [previewCopy target];
    container2 = [target2 container];
    v16 = container2;
    if (superview == container)
    {
      view5 = [previewCopy view];
      [v16 insertSubview:v6 aboveSubview:view5];
    }

    else
    {
      [container2 addSubview:v6];
    }
  }
}

@end