@interface _UIStatusBarRegion
- (BOOL)isEnabled;
- (CGRect)absoluteHoverFrame;
- (NSArray)currentEnabledDisplayItems;
- (NSArray)enabledDisplayItems;
- (NSDictionary)displayItemAbsoluteFrames;
- (NSDirectionalEdgeInsets)extendedHoverInsets;
- (NSString)description;
- (UIEdgeInsets)actionInsets;
- (UILayoutItem)containerItem;
- (UILayoutItem)layoutItem;
- (UIOffset)offset;
- (UIView)hoverView;
- (_UIStatusBar)statusBar;
- (_UIStatusBarDisplayItem)overflowedDisplayItem;
- (_UIStatusBarRegion)enabilityRegion;
- (_UIStatusBarRegion)initWithIdentifier:(id)a3;
- (id)displayItemForHUDAtLocation:(CGPoint)a3;
- (int64_t)effectiveStyle;
- (void)_addSubview:(id)a3 atBack:(BOOL)a4;
- (void)_overriddenStyleAttributesChanged;
- (void)setAlpha:(double)a3;
- (void)setBackgroundView:(id)a3;
- (void)setContentView:(id)a3;
- (void)setDisplayItems:(id)a3;
- (void)setFrozen:(BOOL)a3;
- (void)setHighlightView:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setLayout:(id)a3;
- (void)setOffset:(UIOffset)a3;
- (void)setOffsetable:(BOOL)a3;
- (void)setOverriddenStyle:(int64_t)a3;
- (void)setOverriddenStyleAttributes:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation _UIStatusBarRegion

- (_UIStatusBarRegion)initWithIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIStatusBarRegion;
  v5 = [(_UIStatusBarRegion *)&v15 init];
  identifier = v5->_identifier;
  v5->_identifier = v4;
  v7 = v4;

  v8 = objc_alloc_init(UILayoutGuide);
  layoutGuide = v5->_layoutGuide;
  v5->_layoutGuide = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  displayItems = v5->_displayItems;
  v5->_displayItems = v10;

  v12 = [MEMORY[0x1E696AD50] indexSet];
  disablingTokens = v5->_disablingTokens;
  v5->_disablingTokens = v12;

  *&v5->_style = vdupq_n_s64(4uLL);
  return v5;
}

- (NSString)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_identifier);
  v9 = v3;
  v4 = NSStringFromSelector(sel_enabled);
  v10 = v4;
  v5 = NSStringFromSelector(sel_displayItems);
  v11 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:3];
  v7 = [UIDescriptionBuilder descriptionForObject:self keys:v6, v9, v10];

  return v7;
}

- (UIView)hoverView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    contentView = self->_backgroundView;
  }

  v3 = contentView;

  return v3;
}

- (CGRect)absoluteHoverFrame
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(_UIStatusBarRegion *)self layoutItem];
  v4 = [v3 _ui_superview];
  v5 = [(_UIStatusBarRegion *)self layout];
  v6 = [v5 displayItems];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v11 = 1.79769313e308;
    v12 = 2.22507386e-308;
    v13 = 2.22507386e-308;
    v14 = 1.79769313e308;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v30 + 1) + 8 * i) absoluteFrame];
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        MinX = CGRectGetMinX(v36);
        if (v14 >= MinX)
        {
          v14 = MinX;
        }

        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        MinY = CGRectGetMinY(v37);
        if (v11 >= MinY)
        {
          v11 = MinY;
        }

        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        MaxX = CGRectGetMaxX(v38);
        if (v13 < MaxX)
        {
          v13 = MaxX;
        }

        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        MaxY = CGRectGetMaxY(v39);
        if (v12 < MaxY)
        {
          v12 = MaxY;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1.79769313e308;
    v12 = 2.22507386e-308;
    v13 = 2.22507386e-308;
    v14 = 1.79769313e308;
  }

  if ([v7 count])
  {
    v24 = v13 - v14;
    v25 = v12 - v11;
  }

  else
  {
    v14 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v24 = *(MEMORY[0x1E695F050] + 16);
    v25 = *(MEMORY[0x1E695F050] + 24);
  }

  v26 = v14;
  v27 = v11;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (UILayoutItem)layoutItem
{
  contentView = self->_contentView;
  if (!contentView)
  {
    contentView = self->_layoutGuide;
  }

  v3 = contentView;

  return v3;
}

- (UILayoutItem)containerItem
{
  if (self->_offsetable || (layoutGuide = self->_contentView) == 0)
  {
    layoutGuide = self->_layoutGuide;
  }

  v3 = layoutGuide;

  return v3;
}

- (void)setIdentifier:(id)a3
{
  v5 = a3;
  if (self->_identifier != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_identifier, a3);
    v6 = [(_UIStatusBarRegion *)self layoutGuide];
    [v6 setIdentifier:v7];

    v5 = v7;
  }
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  p_layout = &self->_layout;
  layout = self->_layout;
  v9 = v5;
  if (layout != v5)
  {
    if (layout)
    {
      [(_UIStatusBarRegionLayout *)layout setRegion:0];
      [(_UIStatusBarRegionLayout *)*p_layout setDisplayItems:MEMORY[0x1E695E0F0]];
    }

    objc_storeStrong(&self->_layout, a3);
    if (*p_layout)
    {
      [(_UIStatusBarRegionLayout *)*p_layout setRegion:self];
      v8 = [(_UIStatusBarRegion *)self currentEnabledDisplayItems];
      [(_UIStatusBarRegionLayout *)self->_layout setDisplayItems:v8];
    }
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  p_contentView = &self->_contentView;
  if (self->_contentView != v5)
  {
    v11 = v5;
    v7 = [(_UIStatusBarRegion *)self layoutItem];
    [v7 _ui_removeFromParentLayoutItem];

    if (v11)
    {
      objc_storeStrong(&self->_contentView, a3);
      [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
      p_contentView = &self->_layoutGuide;
    }

    else
    {
      v8 = objc_alloc_init(UILayoutGuide);
      layoutGuide = self->_layoutGuide;
      self->_layoutGuide = v8;
    }

    v10 = *p_contentView;
    *p_contentView = 0;

    v5 = v11;
  }
}

- (void)setOffsetable:(BOOL)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (self->_offsetable != a3)
  {
    self->_offsetable = a3;
    if (a3)
    {
      if (!self->_contentView)
      {
        v4 = objc_alloc_init(UIView);
        [(_UIStatusBarRegion *)self setContentView:v4];
      }

      v5 = objc_alloc_init(UILayoutGuide);
      layoutGuide = self->_layoutGuide;
      self->_layoutGuide = v5;

      [(UIView *)self->_contentView addLayoutGuide:self->_layoutGuide];
      v7 = [(UILayoutGuide *)self->_layoutGuide centerXAnchor];
      v8 = [(UIView *)self->_contentView centerXAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];
      centerXConstraint = self->_centerXConstraint;
      self->_centerXConstraint = v9;

      v11 = [(UILayoutGuide *)self->_layoutGuide centerYAnchor];
      v12 = [(UIView *)self->_contentView centerYAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      centerYConstraint = self->_centerYConstraint;
      self->_centerYConstraint = v13;

      v15 = MEMORY[0x1E69977A0];
      v16 = self->_centerYConstraint;
      v17 = self->_layoutGuide;
      v25[0] = self->_centerXConstraint;
      v25[1] = v16;
      v18 = [(UILayoutGuide *)v17 widthAnchor];
      v19 = [(UIView *)self->_contentView widthAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];
      v25[2] = v20;
      v21 = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
      v22 = [(UIView *)self->_contentView heightAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      v25[3] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      [v15 activateConstraints:v24];
    }
  }
}

- (void)setOffset:(UIOffset)a3
{
  if (self->_offsetable)
  {
    vertical = a3.vertical;
    if (a3.horizontal != self->_offset.horizontal || a3.vertical != self->_offset.vertical)
    {
      self->_offset = a3;
      [(NSLayoutConstraint *)self->_centerXConstraint setConstant:?];
      centerYConstraint = self->_centerYConstraint;

      [(NSLayoutConstraint *)centerYConstraint setConstant:vertical];
    }
  }
}

- (void)_addSubview:(id)a3 atBack:(BOOL)a4
{
  v4 = a4;
  v23[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(_UIStatusBarRegion *)self layoutItem];
  v8 = [v7 _ui_superview];
  v22 = v8;
  if (v4)
  {
    [v8 insertSubview:v6 atIndex:0];
  }

  else if (self->_contentView)
  {
    [v8 insertSubview:v6 aboveSubview:?];
  }

  else
  {
    [v8 addSubview:v6];
  }

  v21 = [v6 topAnchor];
  v20 = [v7 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v23[0] = v19;
  v18 = [v6 leftAnchor];
  v17 = [v7 leftAnchor];
  v9 = [v18 constraintEqualToAnchor:v17];
  v23[1] = v9;
  v10 = [v6 bottomAnchor];
  v11 = [v7 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v23[2] = v12;
  v13 = [v6 rightAnchor];
  v14 = [v7 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v23[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  [MEMORY[0x1E69977A0] activateConstraints:v16];
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v7 = v5;
    if (v5)
    {
      [(_UIStatusBarRegion *)self _addSubview:v5 atBack:1];
      backgroundView = self->_backgroundView;
    }

    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    v5 = v7;
  }
}

- (void)setHighlightView:(id)a3
{
  v5 = a3;
  highlightView = self->_highlightView;
  if (highlightView != v5)
  {
    v7 = v5;
    if (v5)
    {
      [(_UIStatusBarRegion *)self _addSubview:v5 atBack:0];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView removeFromSuperview];
    objc_storeStrong(&self->_highlightView, a3);
    v5 = v7;
  }
}

- (BOOL)isEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_enabilityRegion);
  result = (!WeakRetained || (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_enabilityRegion), v6 = [v5 isEnabled], v5, v4, v6)) && -[NSMutableIndexSet count](self->_disablingTokens, "count") == 0;
  return result;
}

- (void)setFrozen:(BOOL)a3
{
  v3 = a3;
  v27[2] = *MEMORY[0x1E69E9840];
  if ([(_UIStatusBarRegion *)self isFrozen]!= a3)
  {
    if (v3)
    {
      contentView = self->_contentView;
      if (!contentView)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:a2 object:self file:@"_UIStatusBarRegion.m" lineNumber:269 description:@"Setting frozen requires a content view"];

        contentView = self->_contentView;
      }

      [(UIView *)contentView bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(UIView *)self->_contentView alpha];
      v16 = v15;
      [(UIView *)self->_contentView setAlpha:1.0];
      v17 = [[UISnapshotView alloc] initWithFrame:v8, v10, v12, v14];
      [(UISnapshotView *)v17 captureSnapshotRect:self->_contentView fromView:0 withSnapshotType:v8, v10, v12, v14];
      [(_UIStatusBarRegion *)self setFrozenView:v17];
      [(UIView *)self->_frozenView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_frozenView setAlpha:v16];
      [(_UIStatusBarRegion *)self _addSubview:self->_frozenView atBack:1];
      v18 = [(UIView *)self->_frozenView widthAnchor];
      v29.origin.x = v8;
      v29.origin.y = v10;
      v29.size.width = v12;
      v29.size.height = v14;
      v19 = [v18 constraintEqualToConstant:CGRectGetWidth(v29)];
      v27[0] = v19;
      v20 = [(UIView *)self->_frozenView heightAnchor];
      v30.origin.x = v8;
      v30.origin.y = v10;
      v30.size.width = v12;
      v30.size.height = v14;
      v21 = [v20 constraintEqualToConstant:CGRectGetHeight(v30)];
      v27[1] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

      [MEMORY[0x1E69977A0] activateConstraints:v22];
      [(UIView *)self->_contentView setAlpha:0.0];
    }

    else
    {
      [(UIView *)self->_frozenView alpha];
      v24 = v23;
      v25 = [(_UIStatusBarRegion *)self containerView];
      [v25 setAlpha:v24];

      [(UIView *)self->_frozenView removeFromSuperview];

      [(_UIStatusBarRegion *)self setFrozenView:0];
    }
  }
}

- (void)setAlpha:(double)a3
{
  if (!self->_contentView)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIStatusBarRegion.m" lineNumber:305 description:@"Setting alpha requires a content view"];
  }

  v5 = [(_UIStatusBarRegion *)self isFrozen];
  v6 = 104;
  if (v5)
  {
    v6 = 176;
  }

  v7 = *(&self->super.isa + v6);

  [v7 setAlpha:a3];
}

- (void)_overriddenStyleAttributesChanged
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(_UIStatusBarRegion *)self currentEnabledDisplayItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) item];
        [v7 setNeedsUpdate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (int64_t)effectiveStyle
{
  result = self->_overriddenStyle;
  if (result == 4)
  {
    return self->_style;
  }

  return result;
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    if (self->_overriddenStyle == 4)
    {
      [(_UIStatusBarRegion *)self _overriddenStyleAttributesChanged];
    }
  }
}

- (void)setOverriddenStyle:(int64_t)a3
{
  if (self->_overriddenStyle != a3)
  {
    self->_overriddenStyle = a3;
    [(_UIStatusBarRegion *)self _overriddenStyleAttributesChanged];
  }
}

- (void)setOverriddenStyleAttributes:(id)a3
{
  v5 = a3;
  overriddenStyleAttributes = self->_overriddenStyleAttributes;
  v9 = v5;
  v7 = overriddenStyleAttributes;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(_UIStatusBarStyleAttributes *)v9 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_overriddenStyleAttributes, a3);
    [(_UIStatusBarRegion *)self _overriddenStyleAttributesChanged];
  }

LABEL_9:
}

- (void)setDisplayItems:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  displayItems = self->_displayItems;
  if (displayItems != v5 && ([(NSOrderedSet *)displayItems isEqual:v5]& 1) == 0)
  {
    self->_needsReLayout = 0;
    goto LABEL_16;
  }

  needsReLayout = self->_needsReLayout;
  self->_needsReLayout = 0;
  if (needsReLayout)
  {
    goto LABEL_16;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v5;
  v9 = [(NSOrderedSet *)v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v9)
  {
LABEL_29:

    goto LABEL_30;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v41;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v41 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v40 + 1) + 8 * i);
      if ([v14 needsAddingToLayout])
      {
        [v14 setNeedsAddingToLayout:0];
        v11 = 1;
      }
    }

    v10 = [(NSOrderedSet *)v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  }

  while (v10);

  if (v11)
  {
LABEL_16:
    if (!self->_layout)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:a2 object:self file:@"_UIStatusBarRegion.m" lineNumber:371 description:{@"%@ has no layout", self}];
    }

    v15 = self->_displayItems;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __38___UIStatusBarRegion_setDisplayItems___block_invoke;
    v37[3] = &unk_1E7121BB8;
    v16 = v5;
    v38 = v16;
    v39 = self;
    [(NSOrderedSet *)v15 enumerateObjectsUsingBlock:v37];
    v17 = [(NSOrderedSet *)v16 copy];
    v18 = self->_displayItems;
    self->_displayItems = v17;

    v19 = [(_UIStatusBarRegion *)self enabledDisplayItems];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v20 = self->_layout, [(_UIStatusBarRegion *)self containerItem], v21 = objc_claimAutoreleasedReturnValue(), LOBYTE(v20) = [(_UIStatusBarRegionLayout *)v20 mayFitDisplayItems:v19 inContainerItem:v21], v21, (v20 & 1) == 0))
    {
      v23 = [(NSOrderedSet *)self->_displayItems mutableCopy];
      v22 = [v19 mutableCopy];
      do
      {
        v24 = _UIStatusBarGetLowestPrioritizedItem(v22);
        if (!v24)
        {
          break;
        }

        v25 = v24;
        [v22 removeObject:v24];
        [(NSOrderedSet *)v23 removeObject:v25];
        [v25 setContainerView:0];
        [v25 setRegion:0];

        layout = self->_layout;
        v27 = [(_UIStatusBarRegion *)self containerItem];
        LODWORD(layout) = [(_UIStatusBarRegionLayout *)layout mayFitDisplayItems:v22 inContainerItem:v27];
      }

      while (!layout);
      v28 = self->_displayItems;
      self->_displayItems = v23;
    }

    else
    {
      v22 = v19;
    }

    contentView = self->_contentView;
    if (contentView)
    {
      v30 = contentView;
    }

    else
    {
      v30 = [(UILayoutGuide *)self->_layoutGuide owningView];
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __38___UIStatusBarRegion_setDisplayItems___block_invoke_2;
    v34[3] = &unk_1E7121BB8;
    v35 = v30;
    v36 = self;
    v31 = v30;
    [v22 enumerateObjectsUsingBlock:v34];
    v32 = [(_UIStatusBarRegion *)self enabledDisplayItems];
    [(_UIStatusBarRegionLayout *)self->_layout setDisplayItems:v32];

    v8 = v38;
    goto LABEL_29;
  }

LABEL_30:
}

- (NSArray)enabledDisplayItems
{
  displayItems = self->_displayItems;
  v3 = [(NSOrderedSet *)displayItems indexesOfObjectsPassingTest:&__block_literal_global_533];
  v4 = [(NSOrderedSet *)displayItems objectsAtIndexes:v3];

  return v4;
}

- (NSArray)currentEnabledDisplayItems
{
  displayItems = self->_displayItems;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___UIStatusBarRegion_currentEnabledDisplayItems__block_invoke;
  v6[3] = &unk_1E7122128;
  v6[4] = self;
  v3 = [(NSOrderedSet *)displayItems indexesOfObjectsPassingTest:v6];
  v4 = [(NSOrderedSet *)displayItems objectsAtIndexes:v3];

  return v4;
}

- (_UIStatusBarDisplayItem)overflowedDisplayItem
{
  if (([(_UIStatusBarRegionLayout *)self->_layout fitsAllItems]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = _UIStatusBarGetLowestPrioritizedItem(self->_displayItems);
  }

  return v3;
}

- (NSDictionary)displayItemAbsoluteFrames
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_UIStatusBarRegion *)self layout];
  v5 = [v4 displayItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47___UIStatusBarRegion_displayItemAbsoluteFrames__block_invoke;
  v8[3] = &unk_1E711FD88;
  v6 = v3;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

- (id)displayItemForHUDAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(_UIStatusBarRegion *)self layout];
  v7 = [v6 displayItems];

  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v30;
    v12 = 1.79769313e308;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v29 + 1) + 8 * v13);
      v15 = [v14 view];
      [v15 frame];
      if (CGRectIsEmpty(v36))
      {
        goto LABEL_18;
      }

      v16 = [(_UIStatusBarRegion *)self statusBar];
      [v16 convertPoint:v15 toView:{x, y}];
      v18 = v17;

      [v15 bounds];
      if ([v15 pointInside:0 withEvent:{v18, CGRectGetMidY(v37)}])
      {
        v27 = v14;

        goto LABEL_24;
      }

      [v15 bounds];
      MinX = CGRectGetMinX(v38);
      [v15 bounds];
      if (v18 <= MinX)
      {
        break;
      }

      if (v18 >= CGRectGetMaxX(*&v20))
      {
        [v15 bounds];
        v24 = v18 - CGRectGetMaxX(v39);
        goto LABEL_12;
      }

LABEL_18:

      if (v9 == ++v13)
      {
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    v24 = CGRectGetMinX(*&v20) - v18;
LABEL_12:
    if (v24 < 6.0 && v24 < v12)
    {
      v26 = v14;

      v10 = v26;
      v12 = v24;
    }

    goto LABEL_18;
  }

  v10 = 0;
LABEL_23:

  v10 = v10;
  v27 = v10;
LABEL_24:

  return v27;
}

- (UIEdgeInsets)actionInsets
{
  top = self->_actionInsets.top;
  left = self->_actionInsets.left;
  bottom = self->_actionInsets.bottom;
  right = self->_actionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)extendedHoverInsets
{
  top = self->_extendedHoverInsets.top;
  leading = self->_extendedHoverInsets.leading;
  bottom = self->_extendedHoverInsets.bottom;
  trailing = self->_extendedHoverInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (_UIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

- (_UIStatusBarRegion)enabilityRegion
{
  WeakRetained = objc_loadWeakRetained(&self->_enabilityRegion);

  return WeakRetained;
}

- (UIOffset)offset
{
  horizontal = self->_offset.horizontal;
  vertical = self->_offset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end