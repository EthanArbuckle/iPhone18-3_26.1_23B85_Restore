@interface TUIKeyPopupView
- (BOOL)highlightCellAtLocation:(CGPoint)location;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (TUIKeyPopupDelegate)popupDelegate;
- (TUIKeyPopupView)initWithKey:(id)key renderTraits:(id)traits;
- (UIEdgeInsets)stackLayoutMargins;
- (UIView)touchesForwardingView;
- (double)roundRectRadius;
- (id)backgroundBezierPath;
- (id)constraintsToMatchInnerView:(id)view toOuterView:(id)outerView withInsets:(UIEdgeInsets)insets;
- (id)constraintsToMatchView:(id)view toLayoutGuide:(id)guide withInsets:(UIEdgeInsets)insets;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)variantCellAtLocation:(CGPoint)location;
- (unint64_t)maxRows;
- (unint64_t)maxVariantsPerRowForKey:(id)key;
- (unint64_t)variantRowLimitForLayout;
- (void)_addShadowsAndBackgroundsIfNeeded;
- (void)finishVariantSelection;
- (void)layoutSubviews;
- (void)popupConstructorForKey:(id)key;
- (void)setInitialHighlight;
- (void)setRenderTraits:(id)traits;
- (void)unhighlightAllViews;
- (void)updateBackgroundMaterialsForRenderConfig:(id)config;
- (void)updateConstraints;
- (void)updateSelectorForPoint:(CGPoint)point;
- (void)updateSelectorForTouch:(id)touch event:(id)event;
- (void)updateVariantViewPropertiesForKey:(id)key;
- (void)updateVariantsIfNeededForKey:(id)key;
@end

@implementation TUIKeyPopupView

- (UIView)touchesForwardingView
{
  WeakRetained = objc_loadWeakRetained(&self->_touchesForwardingView);

  return WeakRetained;
}

- (TUIKeyPopupDelegate)popupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_popupDelegate);

  return WeakRetained;
}

- (void)updateVariantViewPropertiesForKey:(id)key
{
  keyCopy = key;
  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TUIKeyPopupView *)self maxVariantsPerRowForKey:keyCopy];
    subtrees = [keyCopy subtrees];
    v7 = [subtrees count];

    v4 = vcvtps_u32_f32(v7 / v5);
  }

  [(TUIKeyPopupView *)self setVariantViewRows:v4];
}

- (unint64_t)maxRows
{
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  displayType = [associatedTree displayType];

  if (displayType == 27)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)maxVariantsPerRowForKey:(id)key
{
  keyCopy = key;
  variantRowLimitForLayout = [(TUIKeyPopupView *)self variantRowLimitForLayout];
  if (keyCopy)
  {
    subtrees = [keyCopy subtrees];
    if ([subtrees count] <= variantRowLimitForLayout || self->_layoutStyle != 1)
    {
      goto LABEL_6;
    }

    associatedTree = [(TUIKeyPopupView *)self associatedTree];
    displayType = [associatedTree displayType];

    if (displayType != 27)
    {
      subtrees = [keyCopy subtrees];
      variantRowLimitForLayout = vcvtpd_u64_f64([subtrees count] / -[TUIKeyPopupView maxRows](self, "maxRows"));
LABEL_6:
    }
  }

  return variantRowLimitForLayout;
}

- (unint64_t)variantRowLimitForLayout
{
  if (self->_layoutStyle != 1)
  {
    return 5;
  }

  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  displayType = [associatedTree displayType];

  if (displayType == 27)
  {
    return 5;
  }

  else
  {
    return 15;
  }
}

- (UIEdgeInsets)stackLayoutMargins
{
  v2 = 0.0;
  v3 = 10.0;
  v4 = 0.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)constraintsToMatchInnerView:(id)view toOuterView:(id)outerView withInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v26[4] = *MEMORY[0x1E69E9840];
  outerViewCopy = outerView;
  viewCopy = view;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [outerViewCopy topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
  v26[0] = v23;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [outerViewCopy leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:left];
  v26[1] = v14;
  bottomAnchor = [outerViewCopy bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom];
  v26[2] = v17;
  trailingAnchor = [outerViewCopy trailingAnchor];

  trailingAnchor2 = [viewCopy trailingAnchor];

  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:right];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  return v21;
}

- (id)constraintsToMatchView:(id)view toLayoutGuide:(id)guide withInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v26[4] = *MEMORY[0x1E69E9840];
  guideCopy = guide;
  viewCopy = view;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [guideCopy topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
  v26[0] = v23;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [guideCopy leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:left];
  v26[1] = v14;
  bottomAnchor = [guideCopy bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom];
  v26[2] = v17;
  trailingAnchor = [guideCopy trailingAnchor];

  trailingAnchor2 = [viewCopy trailingAnchor];

  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:right];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  return v21;
}

- (double)roundRectRadius
{
  renderTraits = [(TUIKeyPopupView *)self renderTraits];
  geometry = [renderTraits geometry];
  [geometry roundRectRadius];
  v5 = v4;

  return v5;
}

- (BOOL)highlightCellAtLocation:(CGPoint)location
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(TUIKeyPopupView *)self variantCellAtLocation:location.x, location.y];
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    arrangedVariantCells = [(TUIKeyPopupView *)self arrangedVariantCells];
    v6 = [arrangedVariantCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(arrangedVariantCells);
          }

          [*(*(&v12 + 1) + 8 * i) setHighlighted:*(*(&v12 + 1) + 8 * i) == v4];
        }

        v7 = [arrangedVariantCells countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    indexNumber = [v4 indexNumber];
  }

  else
  {
    indexNumber = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_selectedVariant = indexNumber;

  return v4 != 0;
}

- (id)variantCellAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v55 = *MEMORY[0x1E69E9840];
  variantView = [(TUIKeyPopupView *)self variantView];
  [(TUIKeyPopupView *)self convertPoint:variantView toView:x, y];
  v9 = v8;
  v11 = v10;

  hitTestingMode = [objc_opt_class() hitTestingMode];
  if (hitTestingMode == 1)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    arrangedVariantCells = [(TUIKeyPopupView *)self arrangedVariantCells];
    v18 = [arrangedVariantCells countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v3 = 0;
      v20 = *v41;
      v21 = 1.79769313e308;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(arrangedVariantCells);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          superview = [v23 superview];
          [v23 center];
          v26 = v25;
          v28 = v27;
          variantView2 = [(TUIKeyPopupView *)self variantView];
          [superview convertPoint:variantView2 toView:{v26, v28}];

          UIDistanceBetweenPoints();
          if (v30 < v21)
          {
            v31 = v30;
            v32 = v23;

            v3 = v32;
            v21 = v31;
          }
        }

        v19 = [arrangedVariantCells countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v19);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (hitTestingMode)
    {
      goto LABEL_36;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    arrangedVariantRows = [(TUIKeyPopupView *)self arrangedVariantRows];
    arrangedVariantCells = [arrangedVariantRows countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (arrangedVariantCells)
    {
      v15 = *v49;
      while (2)
      {
        for (j = 0; j != arrangedVariantCells; j = j + 1)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(arrangedVariantRows);
          }

          v17 = *(*(&v48 + 1) + 8 * j);
          [v17 frame];
          v57.x = v9;
          v57.y = v11;
          if (CGRectContainsPoint(v59, v57))
          {
            [(TUIKeyPopupView *)self convertPoint:v17 toView:x, y];
            x = v33;
            y = v34;
            [v17 frame];
            UIRectGetCenter();
            arrangedVariantCells = v17;
            goto LABEL_23;
          }
        }

        arrangedVariantCells = [arrangedVariantRows countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (arrangedVariantCells)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    arrangedSubviews = [arrangedVariantCells arrangedSubviews];
    v3 = [arrangedSubviews countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v3)
    {
      v36 = *v45;
      while (2)
      {
        for (k = 0; k != v3; k = k + 1)
        {
          if (*v45 != v36)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          v38 = *(*(&v44 + 1) + 8 * k);
          [v38 frame];
          v58.x = x;
          v58.y = y;
          if (CGRectContainsPoint(v60, v58))
          {
            v3 = v38;
            goto LABEL_33;
          }
        }

        v3 = [arrangedSubviews countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_33:
  }

LABEL_36:

  return v3;
}

- (void)setInitialHighlight
{
  v22 = *MEMORY[0x1E69E9840];
  arrangedVariantCells = [(TUIKeyPopupView *)self arrangedVariantCells];
  v4 = [arrangedVariantCells count];

  if (v4 == 1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    arrangedVariantCells2 = [(TUIKeyPopupView *)self arrangedVariantCells];
    v6 = [arrangedVariantCells2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(arrangedVariantCells2);
          }

          [*(*(&v17 + 1) + 8 * v9++) setHighlighted:0];
        }

        while (v7 != v9);
        v7 = [arrangedVariantCells2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    self->_selectedVariant = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    self->_selectedVariant = 0x7FFFFFFFFFFFFFFFLL;
    arrangedVariantCells3 = [(TUIKeyPopupView *)self arrangedVariantCells];
    v11 = [arrangedVariantCells3 count];

    if (v11)
    {
      v12 = 0;
      do
      {
        arrangedVariantCells4 = [(TUIKeyPopupView *)self arrangedVariantCells];
        v14 = [arrangedVariantCells4 objectAtIndex:v12];

        [v14 setHighlighted:{objc_msgSend(v14, "isPrimaryVariant")}];
        if ([v14 isPrimaryVariant])
        {
          self->_selectedVariant = [v14 indexNumber];
        }

        ++v12;
        arrangedVariantCells5 = [(TUIKeyPopupView *)self arrangedVariantCells];
        v16 = [arrangedVariantCells5 count];
      }

      while (v12 < v16);
    }
  }
}

- (void)unhighlightAllViews
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  arrangedVariantCells = [(TUIKeyPopupView *)self arrangedVariantCells];
  v4 = [arrangedVariantCells countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(arrangedVariantCells);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHighlighted:0];
      }

      while (v5 != v7);
      v5 = [arrangedVariantCells countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->_selectedVariant = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)finishVariantSelection
{
  indexOfHighlightedVariant = [(TUIKeyPopupView *)self indexOfHighlightedVariant];
  backingTree = self->_backingTree;

  [(UIKBTree *)backingTree setSelectedVariantIndex:indexOfHighlightedVariant];
}

- (void)updateSelectorForTouch:(id)touch event:(id)event
{
  [touch locationInView:{self, event}];

  [(TUIKeyPopupView *)self highlightCellAtLocation:?];
}

- (void)updateSelectorForPoint:(CGPoint)point
{
  [(TUIKeyPopupView *)self highlightCellAtLocation:point.x, point.y];
  indexOfHighlightedVariant = [(TUIKeyPopupView *)self indexOfHighlightedVariant];
  backingTree = self->_backingTree;

  [(UIKBTree *)backingTree setSelectedVariantIndex:indexOfHighlightedVariant];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  [(TUIKeyPopupView *)self finishVariantSelection:event];

  return [(TUIKeyPopupView *)self touchesForwardingView];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = TUIKeyPopupView;
  v8 = [(TUIKeyPopupView *)&v13 pointInside:eventCopy withEvent:x, y];
  backingTree = [(TUIKeyPopupView *)self backingTree];
  if ([backingTree interactionType] != 9)
  {
    goto LABEL_4;
  }

  backingTree2 = [(TUIKeyPopupView *)self backingTree];
  state = [backingTree2 state];

  if (state == 16)
  {
    backingTree = [(TUIKeyPopupView *)self variantView];
    v8 = [backingTree pointInside:eventCopy withEvent:{x, y}];
LABEL_4:
  }

  return v8;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = TUIKeyPopupView;
  [(TUIKeyPopupView *)&v13 layoutSubviews];
  if ([(TUIKeyPopupView *)self layoutStyle]== 1 && [(TUIKeyPopupView *)self drawsShadows])
  {
    keyShadowView = [(TUIKeyPopupView *)self keyShadowView];
    [keyShadowView bounds];
    v4 = CGPathCreateWithRoundedRect(v14, 6.0, 6.0, 0);
    keyShadowView2 = [(TUIKeyPopupView *)self keyShadowView];
    layer = [keyShadowView2 layer];
    [layer setShadowPath:v4];
  }

  if (self->_needsPopup)
  {
    backgroundBezierPath = [(TUIKeyPopupView *)self backgroundBezierPath];
    if (backgroundBezierPath)
    {
      if ([(TUIKeyPopupView *)self drawsBackground])
      {
        backgroundMaskView = [(TUIKeyPopupView *)self backgroundMaskView];
        [backgroundMaskView setPath:backgroundBezierPath];

        borderView = [(TUIKeyPopupView *)self borderView];
        [borderView setPath:backgroundBezierPath];
      }

      if ([(TUIKeyPopupView *)self drawsShadows])
      {
        cGPath = [backgroundBezierPath CGPath];
        deepShadowView = [(TUIKeyPopupView *)self deepShadowView];
        layer2 = [deepShadowView layer];
        [layer2 setShadowPath:cGPath];
      }
    }
  }
}

- (id)backgroundBezierPath
{
  baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [baseKeyLayoutGuide layoutFrame];
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x1E69DC728];

  return [v7 bezierPathWithRect:{0.0, 0.0, v4, v6}];
}

- (void)updateVariantsIfNeededForKey:(id)key
{
  objc_storeStrong(&self->_backingTree, key);
  keyCopy = key;
  [(TUIKeyPopupView *)self popupConstructorForKey:keyCopy];
}

- (void)popupConstructorForKey:(id)key
{
  v74 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  subtrees = [keyCopy subtrees];
  if ([subtrees count] && objc_msgSend(keyCopy, "state") == 16)
  {
    v6 = 0;
  }

  else
  {
    v6 = [keyCopy interactionType] == 2 || objc_msgSend(keyCopy, "interactionType") == 16;
  }

  [(TUIKeyPopupView *)self setIsCharacterPreviewPaddle:v6];

  [(TUIKeyPopupView *)self updateVariantViewPropertiesForKey:keyCopy];
  variantView = [(TUIKeyPopupView *)self variantView];

  if (variantView)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    variantView2 = [(TUIKeyPopupView *)self variantView];
    arrangedSubviews = [variantView2 arrangedSubviews];

    v10 = [arrangedSubviews countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v70;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v70 != v12)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v69 + 1) + 8 * i) removeFromSuperview];
        }

        v11 = [arrangedSubviews countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [(TUIKeyPopupView *)self setVariantView:v14];

    variantView3 = [(TUIKeyPopupView *)self variantView];
    [variantView3 setAxis:1];

    variantView4 = [(TUIKeyPopupView *)self variantView];
    [variantView4 setDistribution:1];

    variantViewAlignment = [(TUIKeyPopupView *)self variantViewAlignment];
    variantView5 = [(TUIKeyPopupView *)self variantView];
    [variantView5 setAlignment:variantViewAlignment];

    variantView6 = [(TUIKeyPopupView *)self variantView];
    [variantView6 setTranslatesAutoresizingMaskIntoConstraints:0];

    wantsUserInteractionEnabled = [(TUIKeyPopupView *)self wantsUserInteractionEnabled];
    variantView7 = [(TUIKeyPopupView *)self variantView];
    [variantView7 setUserInteractionEnabled:wantsUserInteractionEnabled];

    variantView8 = [(TUIKeyPopupView *)self variantView];
    [variantView8 setLayoutMarginsRelativeArrangement:1];

    [(TUIKeyPopupView *)self stackLayoutMargins];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    variantView9 = [(TUIKeyPopupView *)self variantView];
    [variantView9 setLayoutMargins:{v24, v26, v28, v30}];

    [(TUIKeyPopupView *)self itemSpacing];
    v33 = v32;
    variantView10 = [(TUIKeyPopupView *)self variantView];
    [variantView10 setSpacing:v33];

    [(TUIKeyPopupView *)self decorateVariantView];
    arrangedSubviews = [(TUIKeyPopupView *)self variantView];
    [(TUIKeyPopupView *)self addSubview:arrangedSubviews];
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  arrangedVariantRows = [(TUIKeyPopupView *)self arrangedVariantRows];
  if (arrangedVariantRows && (v37 = arrangedVariantRows, [(TUIKeyPopupView *)self arrangedVariantCells], v38 = objc_claimAutoreleasedReturnValue(), v38, v37, v38))
  {
    arrangedVariantRows2 = [(TUIKeyPopupView *)self arrangedVariantRows];
    [arrangedVariantRows2 removeAllObjects];

    arrangedVariantCells = [(TUIKeyPopupView *)self arrangedVariantCells];
    [arrangedVariantCells removeAllObjects];
  }

  else
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyPopupView *)self setArrangedVariantRows:v41];

    arrangedVariantCells = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyPopupView *)self setArrangedVariantCells:arrangedVariantCells];
  }

  if ([(TUIKeyPopupView *)self variantViewRows])
  {
    v42 = 0;
    do
    {
      v43 = objc_alloc_init(MEMORY[0x1E69DCF90]);
      [v43 setAxis:0];
      [v43 setDistribution:1];
      [v43 setAlignment:5];
      [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v43 setUserInteractionEnabled:{-[TUIKeyPopupView wantsUserInteractionEnabled](self, "wantsUserInteractionEnabled")}];
      [(TUIKeyPopupView *)self itemSpacing];
      [v43 setSpacing:?];
      variantView11 = [(TUIKeyPopupView *)self variantView];
      [variantView11 addArrangedSubview:v43];

      arrangedVariantRows3 = [(TUIKeyPopupView *)self arrangedVariantRows];
      [arrangedVariantRows3 addObject:v43];

      ++v42;
    }

    while ([(TUIKeyPopupView *)self variantViewRows]> v42);
  }

  if ([(TUIKeyPopupView *)self drawsBackground]&& ![(TUIKeyPopupView *)self hasConstrainedBackground])
  {
    backdropView = [(TUIKeyPopupView *)self backdropView];
    v47 = *MEMORY[0x1E69DDCE0];
    v48 = *(MEMORY[0x1E69DDCE0] + 8);
    v49 = *(MEMORY[0x1E69DDCE0] + 16);
    v50 = *(MEMORY[0x1E69DDCE0] + 24);
    v51 = [(TUIKeyPopupView *)self constraintsToMatchInnerView:backdropView toOuterView:self withInsets:*MEMORY[0x1E69DDCE0], v48, v49, v50];
    [v35 addObjectsFromArray:v51];

    borderView = [(TUIKeyPopupView *)self borderView];
    v53 = [(TUIKeyPopupView *)self constraintsToMatchInnerView:borderView toOuterView:self withInsets:v47, v48, v49, v50];
    [v35 addObjectsFromArray:v53];
  }

  if ([(TUIKeyPopupView *)self drawsShadows])
  {
    if (![(TUIKeyPopupView *)self hasConstrainedBackground])
    {
      deepShadowView = [(TUIKeyPopupView *)self deepShadowView];
      if (deepShadowView)
      {
        v55 = deepShadowView;
        keyShadowView = [(TUIKeyPopupView *)self keyShadowView];

        if (keyShadowView)
        {
          deepShadowView2 = [(TUIKeyPopupView *)self deepShadowView];
          variantView12 = [(TUIKeyPopupView *)self variantView];
          v59 = [(TUIKeyPopupView *)self constraintsToMatchInnerView:deepShadowView2 toOuterView:variantView12 withInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
          [v35 addObjectsFromArray:v59];

          keyShadowView2 = [(TUIKeyPopupView *)self keyShadowView];
          baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
          v62 = [(TUIKeyPopupView *)self constraintsToMatchView:keyShadowView2 toLayoutGuide:baseKeyLayoutGuide withInsets:0.0, 3.0, 3.0, 3.0];
          [v35 addObjectsFromArray:v62];
        }
      }
    }
  }

  v63 = [(TUIKeyPopupView *)self alignmentConstraintsForKey:keyCopy];
  if ([v63 count])
  {
    subclassAdditionalConstraints = [(TUIKeyPopupView *)self subclassAdditionalConstraints];

    if (subclassAdditionalConstraints)
    {
      v65 = MEMORY[0x1E696ACD8];
      subclassAdditionalConstraints2 = [(TUIKeyPopupView *)self subclassAdditionalConstraints];
      [v65 deactivateConstraints:subclassAdditionalConstraints2];
    }

    [v35 addObjectsFromArray:v63];
    [(TUIKeyPopupView *)self setSubclassAdditionalConstraints:v63];
  }

  if ([v35 count])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:v35];
  }

  backingTree = [(TUIKeyPopupView *)self backingTree];
  variantView13 = [(TUIKeyPopupView *)self variantView];
  [(TUIKeyPopupView *)self addVariantsForKey:backingTree toView:variantView13];
}

- (void)updateConstraints
{
  if (self->_needsPopup)
  {
    variantView = [(TUIKeyPopupView *)self variantView];

    if (!variantView)
    {
      backingTree = [(TUIKeyPopupView *)self backingTree];
      [(TUIKeyPopupView *)self popupConstructorForKey:backingTree];
    }
  }

  v5.receiver = self;
  v5.super_class = TUIKeyPopupView;
  [(TUIKeyPopupView *)&v5 updateConstraints];
}

- (void)setRenderTraits:(id)traits
{
  traitsCopy = traits;
  if (self->_renderTraits != traitsCopy)
  {
    v6 = traitsCopy;
    objc_storeStrong(&self->_renderTraits, traits);
    traitsCopy = v6;
  }
}

- (void)updateBackgroundMaterialsForRenderConfig:(id)config
{
  configCopy = config;
  -[TUIKeyPopupView setIsColorAdaptiveBackground:](self, "setIsColorAdaptiveBackground:", [configCopy colorAdaptiveBackground]);
  if (TIGetEnableColorAdaptiveKeyboardPaddlesValue_onceToken != -1)
  {
    dispatch_once(&TIGetEnableColorAdaptiveKeyboardPaddlesValue_onceToken, &__block_literal_global_7720);
  }

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v6 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"EnableColorAdaptiveKeyboardPaddles"];

  bOOLValue = [v6 BOOLValue];
  if (objc_opt_respondsToSelector())
  {
    variantSelectorBackdropStyle = [configCopy variantSelectorBackdropStyle];
  }

  else
  {
    variantSelectorBackdropStyle = [configCopy keyBackdropStyle];
  }

  v9 = variantSelectorBackdropStyle;
  if (!(bOOLValue & 1 | (([configCopy colorAdaptiveBackground] & 1) == 0)))
  {
    [(TUIKeyPopupView *)self setIsColorAdaptiveBackground:0];
    renderTraits = [(TUIKeyPopupView *)self renderTraits];
    v11 = [renderTraits usesDarkAppearance] ^ 1;
    renderTraits2 = [(TUIKeyPopupView *)self renderTraits];
    [renderTraits2 setBlendForm:v11];

    v13 = MEMORY[0x1E69DCB20];
    renderTraits3 = [(TUIKeyPopupView *)self renderTraits];
    if ([renderTraits3 usesDarkAppearance])
    {
      v15 = @"UIKBColorWhite_Alpha30";
    }

    else
    {
      v15 = @"UIKBColorWhite";
    }

    v16 = [v13 gradientWithFlatColor:v15];
    renderTraits4 = [(TUIKeyPopupView *)self renderTraits];
    [renderTraits4 setBackgroundGradient:v16];

    renderTraits5 = [(TUIKeyPopupView *)self renderTraits];
    if ([renderTraits5 usesDarkAppearance])
    {
      v9 = 2030;
    }

    else
    {
      v9 = 3901;
    }
  }

  renderTraits6 = [(TUIKeyPopupView *)self renderTraits];
  layeredBackgroundGradient = [renderTraits6 layeredBackgroundGradient];
  if (!layeredBackgroundGradient || (-[TUIKeyPopupView renderTraits](self, "renderTraits"), v3 = objc_claimAutoreleasedReturnValue(), ([v3 usesDarkAppearance] & 1) != 0))
  {
    renderTraits7 = [(TUIKeyPopupView *)self renderTraits];
    backgroundGradient = [renderTraits7 backgroundGradient];
    flatColorName = [backgroundGradient flatColorName];

    if (!layeredBackgroundGradient)
    {
      goto LABEL_19;
    }
  }

  else
  {
    renderTraits8 = [(TUIKeyPopupView *)self renderTraits];
    layeredBackgroundGradient2 = [renderTraits8 layeredBackgroundGradient];
    flatColorName = [layeredBackgroundGradient2 flatColorName];
  }

LABEL_19:
  if (!flatColorName)
  {
    if ([(TUIKeyPopupView *)self isColorAdaptiveBackground])
    {
      flatColorName = @"UIKBColorWhite";
      v26 = @"UIKBColorWhite";
    }

    else
    {
      renderTraits9 = [(TUIKeyPopupView *)self renderTraits];
      usesDarkAppearance = [renderTraits9 usesDarkAppearance];
      v29 = @"UIKBColorWhite";
      if (usesDarkAppearance)
      {
        v29 = @"UIKBColorBlack";
      }

      flatColorName = v29;
    }
  }

  v30 = UIKBGetNamedColor(flatColorName);
  borderView = [(TUIKeyPopupView *)self borderView];
  shapeLayer = [borderView shapeLayer];
  [shapeLayer setFillColor:v30];

  backdropView = [(TUIKeyPopupView *)self backdropView];
  [backdropView transitionToStyle:v9];

  if ([configCopy animatedBackground])
  {
    renderTraits10 = [(TUIKeyPopupView *)self renderTraits];
    [renderTraits10 setControlOpacities:1];

    borderView2 = [(TUIKeyPopupView *)self borderView];
    layer = [borderView2 layer];
    [layer setCompositingFilter:0];

    borderView3 = [(TUIKeyPopupView *)self borderView];
    layer2 = [borderView3 layer];
    renderTraits11 = [(TUIKeyPopupView *)self renderTraits];
    v40 = [renderTraits11 extraFiltersForType:*MEMORY[0x1E6979D78]];
    [layer2 setFilters:v40];

    if (![configCopy lightKeyboard])
    {
      goto LABEL_34;
    }

    keyShadowView = [(TUIKeyPopupView *)self keyShadowView];
    layer3 = [keyShadowView layer];
    v43 = *MEMORY[0x1E6979CE8];
    [layer3 setCompositingFilter:*MEMORY[0x1E6979CE8]];

    deepShadowView = [(TUIKeyPopupView *)self deepShadowView];
    layer4 = [deepShadowView layer];
    [layer4 setCompositingFilter:v43];
  }

  else
  {
    if ([configCopy colorAdaptiveBackground])
    {
      deepShadowView = [(TUIKeyPopupView *)self borderView];
      layer4 = [deepShadowView layer];
      renderTraits12 = [(TUIKeyPopupView *)self renderTraits];
      v47 = [renderTraits12 extraFiltersForType:*MEMORY[0x1E6979D78]];
      [layer4 setFilters:v47];
    }

    else
    {
      if (![configCopy lightKeyboard])
      {
        goto LABEL_34;
      }

      deepShadowView = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979850]];
      layer4 = [(TUIKeyPopupView *)self backdropView];
      renderTraits12 = [layer4 layer];
      [renderTraits12 setCompositingFilter:deepShadowView];
    }
  }

LABEL_34:
}

- (void)_addShadowsAndBackgroundsIfNeeded
{
  drawsShadows = [(TUIKeyPopupView *)self drawsShadows];
  v4 = MEMORY[0x1E695F058];
  if (drawsShadows)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = [v5 initWithFrame:{*v4, v7, v8, v9}];
    deepShadowView = self->_deepShadowView;
    self->_deepShadowView = v10;

    [(UIView *)self->_deepShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_deepShadowView setUserInteractionEnabled:0];
    layer = [(UIView *)self->_deepShadowView layer];
    LODWORD(v13) = 1045220557;
    [layer setShadowOpacity:v13];

    layer2 = [(UIView *)self->_deepShadowView layer];
    [layer2 setShadowRadius:7.0];

    layer3 = [(UIView *)self->_deepShadowView layer];
    [layer3 setShadowOffset:{0.0, 6.0}];

    layer4 = [(UIView *)self->_deepShadowView layer];
    [layer4 setMasksToBounds:0];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer5 = [(UIView *)self->_deepShadowView layer];
    [layer5 setShadowColor:cGColor];

    [(TUIKeyPopupView *)self addSubview:self->_deepShadowView];
    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    keyShadowView = self->_keyShadowView;
    self->_keyShadowView = v20;

    [(UIView *)self->_keyShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_keyShadowView setUserInteractionEnabled:0];
    layer6 = [(UIView *)self->_keyShadowView layer];
    LODWORD(v23) = 1045220557;
    [layer6 setShadowOpacity:v23];

    layer7 = [(UIView *)self->_keyShadowView layer];
    [layer7 setShadowRadius:0.0];

    layer8 = [(UIView *)self->_keyShadowView layer];
    [layer8 setShadowOffset:{0.0, 1.0}];

    layer9 = [(UIView *)self->_keyShadowView layer];
    [layer9 setMasksToBounds:0];

    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    cGColor2 = [blackColor2 CGColor];
    layer10 = [(UIView *)self->_keyShadowView layer];
    [layer10 setShadowColor:cGColor2];

    [(TUIKeyPopupView *)self addSubview:self->_keyShadowView];
  }

  if ([(TUIKeyPopupView *)self drawsBackground])
  {
    v30 = objc_alloc(MEMORY[0x1E69DCB90]);
    v31 = *v4;
    v32 = v4[1];
    v33 = v4[2];
    v34 = v4[3];
    v35 = [v30 initWithFrame:3903 style:{*v4, v32, v33, v34}];
    backdropView = self->_backdropView;
    self->_backdropView = v35;

    [(UIKBVisualEffectView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIKBVisualEffectView *)self->_backdropView setUserInteractionEnabled:0];
    [(TUIKeyPopupView *)self addSubview:self->_backdropView];
    v37 = [[TUIDrawingView alloc] initWithFrame:v31, v32, v33, v34];
    backgroundMaskView = self->_backgroundMaskView;
    self->_backgroundMaskView = v37;

    [(TUIDrawingView *)self->_backgroundMaskView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TUIDrawingView *)self->_backgroundMaskView setUserInteractionEnabled:0];
    subviews = [(UIKBVisualEffectView *)self->_backdropView subviews];
    v40 = [subviews count];

    if (v40 == 1)
    {
      contentView = [(UIKBVisualEffectView *)self->_backdropView contentView];
      [contentView addSubview:self->_backgroundMaskView];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UIKBVisualEffectView *)self->_backdropView setBackgroundColor:clearColor];
    }

    else
    {
      [(UIKBVisualEffectView *)self->_backdropView setMaskView:self->_backgroundMaskView];
    }

    v43 = [[TUIDrawingView alloc] initWithFrame:v31, v32, v33, v34];
    borderView = self->_borderView;
    self->_borderView = v43;

    [(TUIDrawingView *)self->_borderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TUIDrawingView *)self->_borderView setUserInteractionEnabled:0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    cGColor3 = [clearColor2 CGColor];
    shapeLayer = [(TUIDrawingView *)self->_borderView shapeLayer];
    [shapeLayer setFillColor:cGColor3];

    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    cGColor4 = [systemFillColor CGColor];
    shapeLayer2 = [(TUIDrawingView *)self->_borderView shapeLayer];
    [shapeLayer2 setStrokeColor:cGColor4];

    [(TUIKeyPopupView *)self borderViewLineWidth];
    v52 = v51;
    shapeLayer3 = [(TUIDrawingView *)self->_borderView shapeLayer];
    [shapeLayer3 setLineWidth:v52];

    v54 = self->_borderView;

    [(TUIKeyPopupView *)self addSubview:v54];
  }
}

- (TUIKeyPopupView)initWithKey:(id)key renderTraits:(id)traits
{
  keyCopy = key;
  traitsCopy = traits;
  v18.receiver = self;
  v18.super_class = TUIKeyPopupView;
  v8 = [(TUIKeyPopupView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    baseKeyLayoutGuide = v8->_baseKeyLayoutGuide;
    v8->_baseKeyLayoutGuide = v9;

    [(UILayoutGuide *)v8->_baseKeyLayoutGuide setIdentifier:@"TUIVariantSelectorBaseGuide"];
    [(TUIKeyPopupView *)v8 addLayoutGuide:v8->_baseKeyLayoutGuide];
    backingTree = [keyCopy backingTree];
    backingTree = v8->_backingTree;
    v8->_backingTree = backingTree;

    v8->_layoutStyle = [keyCopy style];
    arrangedVariantsArray = [keyCopy arrangedVariantsArray];
    arrangedVariantsArray = v8->_arrangedVariantsArray;
    v8->_arrangedVariantsArray = arrangedVariantsArray;

    primaryVariant = [keyCopy primaryVariant];
    primaryVariant = v8->_primaryVariant;
    v8->_primaryVariant = primaryVariant;

    v8->_baseKeyOnRight = [keyCopy isBaseKeyOnRight];
    objc_storeStrong(&v8->_renderTraits, traits);
    if ([(UIKBTree *)v8->_backingTree state]== 16)
    {
      v8->_needsPopup = 1;
      [(TUIKeyPopupView *)v8 setVariantViewRows:1];
    }

    else
    {
      v8->_needsPopup = [keyCopy style] == 1;
    }

    [(TUIKeyPopupView *)v8 _addShadowsAndBackgroundsIfNeeded];
    [(TUIKeyPopupView *)v8 setUserInteractionEnabled:[(TUIKeyPopupView *)v8 wantsUserInteractionEnabled]];
  }

  return v8;
}

@end