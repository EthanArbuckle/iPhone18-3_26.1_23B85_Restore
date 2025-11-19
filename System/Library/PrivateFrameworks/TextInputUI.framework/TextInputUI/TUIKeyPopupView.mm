@interface TUIKeyPopupView
- (BOOL)highlightCellAtLocation:(CGPoint)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (TUIKeyPopupDelegate)popupDelegate;
- (TUIKeyPopupView)initWithKey:(id)a3 renderTraits:(id)a4;
- (UIEdgeInsets)stackLayoutMargins;
- (UIView)touchesForwardingView;
- (double)roundRectRadius;
- (id)backgroundBezierPath;
- (id)constraintsToMatchInnerView:(id)a3 toOuterView:(id)a4 withInsets:(UIEdgeInsets)a5;
- (id)constraintsToMatchView:(id)a3 toLayoutGuide:(id)a4 withInsets:(UIEdgeInsets)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)variantCellAtLocation:(CGPoint)a3;
- (unint64_t)maxRows;
- (unint64_t)maxVariantsPerRowForKey:(id)a3;
- (unint64_t)variantRowLimitForLayout;
- (void)_addShadowsAndBackgroundsIfNeeded;
- (void)finishVariantSelection;
- (void)layoutSubviews;
- (void)popupConstructorForKey:(id)a3;
- (void)setInitialHighlight;
- (void)setRenderTraits:(id)a3;
- (void)unhighlightAllViews;
- (void)updateBackgroundMaterialsForRenderConfig:(id)a3;
- (void)updateConstraints;
- (void)updateSelectorForPoint:(CGPoint)a3;
- (void)updateSelectorForTouch:(id)a3 event:(id)a4;
- (void)updateVariantViewPropertiesForKey:(id)a3;
- (void)updateVariantsIfNeededForKey:(id)a3;
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

- (void)updateVariantViewPropertiesForKey:(id)a3
{
  v8 = a3;
  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TUIKeyPopupView *)self maxVariantsPerRowForKey:v8];
    v6 = [v8 subtrees];
    v7 = [v6 count];

    v4 = vcvtps_u32_f32(v7 / v5);
  }

  [(TUIKeyPopupView *)self setVariantViewRows:v4];
}

- (unint64_t)maxRows
{
  v2 = [(TUIKeyPopupView *)self associatedTree];
  v3 = [v2 displayType];

  if (v3 == 27)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)maxVariantsPerRowForKey:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyPopupView *)self variantRowLimitForLayout];
  if (v4)
  {
    v6 = [v4 subtrees];
    if ([v6 count] <= v5 || self->_layoutStyle != 1)
    {
      goto LABEL_6;
    }

    v7 = [(TUIKeyPopupView *)self associatedTree];
    v8 = [v7 displayType];

    if (v8 != 27)
    {
      v6 = [v4 subtrees];
      v5 = vcvtpd_u64_f64([v6 count] / -[TUIKeyPopupView maxRows](self, "maxRows"));
LABEL_6:
    }
  }

  return v5;
}

- (unint64_t)variantRowLimitForLayout
{
  if (self->_layoutStyle != 1)
  {
    return 5;
  }

  v2 = [(TUIKeyPopupView *)self associatedTree];
  v3 = [v2 displayType];

  if (v3 == 27)
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

- (id)constraintsToMatchInnerView:(id)a3 toOuterView:(id)a4 withInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v26[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a3;
  v25 = [v11 topAnchor];
  v24 = [v10 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:top];
  v26[0] = v23;
  v12 = [v11 leadingAnchor];
  v13 = [v10 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:left];
  v26[1] = v14;
  v15 = [v10 bottomAnchor];
  v16 = [v11 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:bottom];
  v26[2] = v17;
  v18 = [v10 trailingAnchor];

  v19 = [v11 trailingAnchor];

  v20 = [v18 constraintEqualToAnchor:v19 constant:right];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  return v21;
}

- (id)constraintsToMatchView:(id)a3 toLayoutGuide:(id)a4 withInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v26[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a3;
  v25 = [v11 topAnchor];
  v24 = [v10 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:top];
  v26[0] = v23;
  v12 = [v11 leadingAnchor];
  v13 = [v10 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:left];
  v26[1] = v14;
  v15 = [v10 bottomAnchor];
  v16 = [v11 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:bottom];
  v26[2] = v17;
  v18 = [v10 trailingAnchor];

  v19 = [v11 trailingAnchor];

  v20 = [v18 constraintEqualToAnchor:v19 constant:right];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  return v21;
}

- (double)roundRectRadius
{
  v2 = [(TUIKeyPopupView *)self renderTraits];
  v3 = [v2 geometry];
  [v3 roundRectRadius];
  v5 = v4;

  return v5;
}

- (BOOL)highlightCellAtLocation:(CGPoint)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(TUIKeyPopupView *)self variantCellAtLocation:a3.x, a3.y];
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(TUIKeyPopupView *)self arrangedVariantCells];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * i) setHighlighted:*(*(&v12 + 1) + 8 * i) == v4];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v10 = [v4 indexNumber];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_selectedVariant = v10;

  return v4 != 0;
}

- (id)variantCellAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v55 = *MEMORY[0x1E69E9840];
  v7 = [(TUIKeyPopupView *)self variantView];
  [(TUIKeyPopupView *)self convertPoint:v7 toView:x, y];
  v9 = v8;
  v11 = v10;

  v12 = [objc_opt_class() hitTestingMode];
  if (v12 == 1)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = [(TUIKeyPopupView *)self arrangedVariantCells];
    v18 = [v14 countByEnumeratingWithState:&v40 objects:v52 count:16];
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
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          v24 = [v23 superview];
          [v23 center];
          v26 = v25;
          v28 = v27;
          v29 = [(TUIKeyPopupView *)self variantView];
          [v24 convertPoint:v29 toView:{v26, v28}];

          UIDistanceBetweenPoints();
          if (v30 < v21)
          {
            v31 = v30;
            v32 = v23;

            v3 = v32;
            v21 = v31;
          }
        }

        v19 = [v14 countByEnumeratingWithState:&v40 objects:v52 count:16];
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
    if (v12)
    {
      goto LABEL_36;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = [(TUIKeyPopupView *)self arrangedVariantRows];
    v14 = [v13 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v14)
    {
      v15 = *v49;
      while (2)
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(v13);
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
            v14 = v17;
            goto LABEL_23;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v14)
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
    v35 = [v14 arrangedSubviews];
    v3 = [v35 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v3)
    {
      v36 = *v45;
      while (2)
      {
        for (k = 0; k != v3; k = k + 1)
        {
          if (*v45 != v36)
          {
            objc_enumerationMutation(v35);
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

        v3 = [v35 countByEnumeratingWithState:&v44 objects:v53 count:16];
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
  v3 = [(TUIKeyPopupView *)self arrangedVariantCells];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(TUIKeyPopupView *)self arrangedVariantCells];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v17 + 1) + 8 * v9++) setHighlighted:0];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    self->_selectedVariant = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    self->_selectedVariant = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [(TUIKeyPopupView *)self arrangedVariantCells];
    v11 = [v10 count];

    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = [(TUIKeyPopupView *)self arrangedVariantCells];
        v14 = [v13 objectAtIndex:v12];

        [v14 setHighlighted:{objc_msgSend(v14, "isPrimaryVariant")}];
        if ([v14 isPrimaryVariant])
        {
          self->_selectedVariant = [v14 indexNumber];
        }

        ++v12;
        v15 = [(TUIKeyPopupView *)self arrangedVariantCells];
        v16 = [v15 count];
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
  v3 = [(TUIKeyPopupView *)self arrangedVariantCells];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHighlighted:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->_selectedVariant = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)finishVariantSelection
{
  v3 = [(TUIKeyPopupView *)self indexOfHighlightedVariant];
  backingTree = self->_backingTree;

  [(UIKBTree *)backingTree setSelectedVariantIndex:v3];
}

- (void)updateSelectorForTouch:(id)a3 event:(id)a4
{
  [a3 locationInView:{self, a4}];

  [(TUIKeyPopupView *)self highlightCellAtLocation:?];
}

- (void)updateSelectorForPoint:(CGPoint)a3
{
  [(TUIKeyPopupView *)self highlightCellAtLocation:a3.x, a3.y];
  v4 = [(TUIKeyPopupView *)self indexOfHighlightedVariant];
  backingTree = self->_backingTree;

  [(UIKBTree *)backingTree setSelectedVariantIndex:v4];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  [(TUIKeyPopupView *)self finishVariantSelection:a4];

  return [(TUIKeyPopupView *)self touchesForwardingView];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TUIKeyPopupView;
  v8 = [(TUIKeyPopupView *)&v13 pointInside:v7 withEvent:x, y];
  v9 = [(TUIKeyPopupView *)self backingTree];
  if ([v9 interactionType] != 9)
  {
    goto LABEL_4;
  }

  v10 = [(TUIKeyPopupView *)self backingTree];
  v11 = [v10 state];

  if (v11 == 16)
  {
    v9 = [(TUIKeyPopupView *)self variantView];
    v8 = [v9 pointInside:v7 withEvent:{x, y}];
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
    v3 = [(TUIKeyPopupView *)self keyShadowView];
    [v3 bounds];
    v4 = CGPathCreateWithRoundedRect(v14, 6.0, 6.0, 0);
    v5 = [(TUIKeyPopupView *)self keyShadowView];
    v6 = [v5 layer];
    [v6 setShadowPath:v4];
  }

  if (self->_needsPopup)
  {
    v7 = [(TUIKeyPopupView *)self backgroundBezierPath];
    if (v7)
    {
      if ([(TUIKeyPopupView *)self drawsBackground])
      {
        v8 = [(TUIKeyPopupView *)self backgroundMaskView];
        [v8 setPath:v7];

        v9 = [(TUIKeyPopupView *)self borderView];
        [v9 setPath:v7];
      }

      if ([(TUIKeyPopupView *)self drawsShadows])
      {
        v10 = [v7 CGPath];
        v11 = [(TUIKeyPopupView *)self deepShadowView];
        v12 = [v11 layer];
        [v12 setShadowPath:v10];
      }
    }
  }
}

- (id)backgroundBezierPath
{
  v2 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [v2 layoutFrame];
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x1E69DC728];

  return [v7 bezierPathWithRect:{0.0, 0.0, v4, v6}];
}

- (void)updateVariantsIfNeededForKey:(id)a3
{
  objc_storeStrong(&self->_backingTree, a3);
  v5 = a3;
  [(TUIKeyPopupView *)self popupConstructorForKey:v5];
}

- (void)popupConstructorForKey:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 subtrees];
  if ([v5 count] && objc_msgSend(v4, "state") == 16)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 interactionType] == 2 || objc_msgSend(v4, "interactionType") == 16;
  }

  [(TUIKeyPopupView *)self setIsCharacterPreviewPaddle:v6];

  [(TUIKeyPopupView *)self updateVariantViewPropertiesForKey:v4];
  v7 = [(TUIKeyPopupView *)self variantView];

  if (v7)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v8 = [(TUIKeyPopupView *)self variantView];
    v9 = [v8 arrangedSubviews];

    v10 = [v9 countByEnumeratingWithState:&v69 objects:v73 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v69 + 1) + 8 * i) removeFromSuperview];
        }

        v11 = [v9 countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [(TUIKeyPopupView *)self setVariantView:v14];

    v15 = [(TUIKeyPopupView *)self variantView];
    [v15 setAxis:1];

    v16 = [(TUIKeyPopupView *)self variantView];
    [v16 setDistribution:1];

    v17 = [(TUIKeyPopupView *)self variantViewAlignment];
    v18 = [(TUIKeyPopupView *)self variantView];
    [v18 setAlignment:v17];

    v19 = [(TUIKeyPopupView *)self variantView];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [(TUIKeyPopupView *)self wantsUserInteractionEnabled];
    v21 = [(TUIKeyPopupView *)self variantView];
    [v21 setUserInteractionEnabled:v20];

    v22 = [(TUIKeyPopupView *)self variantView];
    [v22 setLayoutMarginsRelativeArrangement:1];

    [(TUIKeyPopupView *)self stackLayoutMargins];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(TUIKeyPopupView *)self variantView];
    [v31 setLayoutMargins:{v24, v26, v28, v30}];

    [(TUIKeyPopupView *)self itemSpacing];
    v33 = v32;
    v34 = [(TUIKeyPopupView *)self variantView];
    [v34 setSpacing:v33];

    [(TUIKeyPopupView *)self decorateVariantView];
    v9 = [(TUIKeyPopupView *)self variantView];
    [(TUIKeyPopupView *)self addSubview:v9];
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = [(TUIKeyPopupView *)self arrangedVariantRows];
  if (v36 && (v37 = v36, [(TUIKeyPopupView *)self arrangedVariantCells], v38 = objc_claimAutoreleasedReturnValue(), v38, v37, v38))
  {
    v39 = [(TUIKeyPopupView *)self arrangedVariantRows];
    [v39 removeAllObjects];

    v40 = [(TUIKeyPopupView *)self arrangedVariantCells];
    [v40 removeAllObjects];
  }

  else
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyPopupView *)self setArrangedVariantRows:v41];

    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyPopupView *)self setArrangedVariantCells:v40];
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
      v44 = [(TUIKeyPopupView *)self variantView];
      [v44 addArrangedSubview:v43];

      v45 = [(TUIKeyPopupView *)self arrangedVariantRows];
      [v45 addObject:v43];

      ++v42;
    }

    while ([(TUIKeyPopupView *)self variantViewRows]> v42);
  }

  if ([(TUIKeyPopupView *)self drawsBackground]&& ![(TUIKeyPopupView *)self hasConstrainedBackground])
  {
    v46 = [(TUIKeyPopupView *)self backdropView];
    v47 = *MEMORY[0x1E69DDCE0];
    v48 = *(MEMORY[0x1E69DDCE0] + 8);
    v49 = *(MEMORY[0x1E69DDCE0] + 16);
    v50 = *(MEMORY[0x1E69DDCE0] + 24);
    v51 = [(TUIKeyPopupView *)self constraintsToMatchInnerView:v46 toOuterView:self withInsets:*MEMORY[0x1E69DDCE0], v48, v49, v50];
    [v35 addObjectsFromArray:v51];

    v52 = [(TUIKeyPopupView *)self borderView];
    v53 = [(TUIKeyPopupView *)self constraintsToMatchInnerView:v52 toOuterView:self withInsets:v47, v48, v49, v50];
    [v35 addObjectsFromArray:v53];
  }

  if ([(TUIKeyPopupView *)self drawsShadows])
  {
    if (![(TUIKeyPopupView *)self hasConstrainedBackground])
    {
      v54 = [(TUIKeyPopupView *)self deepShadowView];
      if (v54)
      {
        v55 = v54;
        v56 = [(TUIKeyPopupView *)self keyShadowView];

        if (v56)
        {
          v57 = [(TUIKeyPopupView *)self deepShadowView];
          v58 = [(TUIKeyPopupView *)self variantView];
          v59 = [(TUIKeyPopupView *)self constraintsToMatchInnerView:v57 toOuterView:v58 withInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
          [v35 addObjectsFromArray:v59];

          v60 = [(TUIKeyPopupView *)self keyShadowView];
          v61 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
          v62 = [(TUIKeyPopupView *)self constraintsToMatchView:v60 toLayoutGuide:v61 withInsets:0.0, 3.0, 3.0, 3.0];
          [v35 addObjectsFromArray:v62];
        }
      }
    }
  }

  v63 = [(TUIKeyPopupView *)self alignmentConstraintsForKey:v4];
  if ([v63 count])
  {
    v64 = [(TUIKeyPopupView *)self subclassAdditionalConstraints];

    if (v64)
    {
      v65 = MEMORY[0x1E696ACD8];
      v66 = [(TUIKeyPopupView *)self subclassAdditionalConstraints];
      [v65 deactivateConstraints:v66];
    }

    [v35 addObjectsFromArray:v63];
    [(TUIKeyPopupView *)self setSubclassAdditionalConstraints:v63];
  }

  if ([v35 count])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:v35];
  }

  v67 = [(TUIKeyPopupView *)self backingTree];
  v68 = [(TUIKeyPopupView *)self variantView];
  [(TUIKeyPopupView *)self addVariantsForKey:v67 toView:v68];
}

- (void)updateConstraints
{
  if (self->_needsPopup)
  {
    v3 = [(TUIKeyPopupView *)self variantView];

    if (!v3)
    {
      v4 = [(TUIKeyPopupView *)self backingTree];
      [(TUIKeyPopupView *)self popupConstructorForKey:v4];
    }
  }

  v5.receiver = self;
  v5.super_class = TUIKeyPopupView;
  [(TUIKeyPopupView *)&v5 updateConstraints];
}

- (void)setRenderTraits:(id)a3
{
  v5 = a3;
  if (self->_renderTraits != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_renderTraits, a3);
    v5 = v6;
  }
}

- (void)updateBackgroundMaterialsForRenderConfig:(id)a3
{
  v48 = a3;
  -[TUIKeyPopupView setIsColorAdaptiveBackground:](self, "setIsColorAdaptiveBackground:", [v48 colorAdaptiveBackground]);
  if (TIGetEnableColorAdaptiveKeyboardPaddlesValue_onceToken != -1)
  {
    dispatch_once(&TIGetEnableColorAdaptiveKeyboardPaddlesValue_onceToken, &__block_literal_global_7720);
  }

  v5 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v6 = [v5 valueForPreferenceKey:@"EnableColorAdaptiveKeyboardPaddles"];

  v7 = [v6 BOOLValue];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v48 variantSelectorBackdropStyle];
  }

  else
  {
    v8 = [v48 keyBackdropStyle];
  }

  v9 = v8;
  if (!(v7 & 1 | (([v48 colorAdaptiveBackground] & 1) == 0)))
  {
    [(TUIKeyPopupView *)self setIsColorAdaptiveBackground:0];
    v10 = [(TUIKeyPopupView *)self renderTraits];
    v11 = [v10 usesDarkAppearance] ^ 1;
    v12 = [(TUIKeyPopupView *)self renderTraits];
    [v12 setBlendForm:v11];

    v13 = MEMORY[0x1E69DCB20];
    v14 = [(TUIKeyPopupView *)self renderTraits];
    if ([v14 usesDarkAppearance])
    {
      v15 = @"UIKBColorWhite_Alpha30";
    }

    else
    {
      v15 = @"UIKBColorWhite";
    }

    v16 = [v13 gradientWithFlatColor:v15];
    v17 = [(TUIKeyPopupView *)self renderTraits];
    [v17 setBackgroundGradient:v16];

    v18 = [(TUIKeyPopupView *)self renderTraits];
    if ([v18 usesDarkAppearance])
    {
      v9 = 2030;
    }

    else
    {
      v9 = 3901;
    }
  }

  v19 = [(TUIKeyPopupView *)self renderTraits];
  v20 = [v19 layeredBackgroundGradient];
  if (!v20 || (-[TUIKeyPopupView renderTraits](self, "renderTraits"), v3 = objc_claimAutoreleasedReturnValue(), ([v3 usesDarkAppearance] & 1) != 0))
  {
    v24 = [(TUIKeyPopupView *)self renderTraits];
    v25 = [v24 backgroundGradient];
    v23 = [v25 flatColorName];

    if (!v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v21 = [(TUIKeyPopupView *)self renderTraits];
    v22 = [v21 layeredBackgroundGradient];
    v23 = [v22 flatColorName];
  }

LABEL_19:
  if (!v23)
  {
    if ([(TUIKeyPopupView *)self isColorAdaptiveBackground])
    {
      v23 = @"UIKBColorWhite";
      v26 = @"UIKBColorWhite";
    }

    else
    {
      v27 = [(TUIKeyPopupView *)self renderTraits];
      v28 = [v27 usesDarkAppearance];
      v29 = @"UIKBColorWhite";
      if (v28)
      {
        v29 = @"UIKBColorBlack";
      }

      v23 = v29;
    }
  }

  v30 = UIKBGetNamedColor(v23);
  v31 = [(TUIKeyPopupView *)self borderView];
  v32 = [v31 shapeLayer];
  [v32 setFillColor:v30];

  v33 = [(TUIKeyPopupView *)self backdropView];
  [v33 transitionToStyle:v9];

  if ([v48 animatedBackground])
  {
    v34 = [(TUIKeyPopupView *)self renderTraits];
    [v34 setControlOpacities:1];

    v35 = [(TUIKeyPopupView *)self borderView];
    v36 = [v35 layer];
    [v36 setCompositingFilter:0];

    v37 = [(TUIKeyPopupView *)self borderView];
    v38 = [v37 layer];
    v39 = [(TUIKeyPopupView *)self renderTraits];
    v40 = [v39 extraFiltersForType:*MEMORY[0x1E6979D78]];
    [v38 setFilters:v40];

    if (![v48 lightKeyboard])
    {
      goto LABEL_34;
    }

    v41 = [(TUIKeyPopupView *)self keyShadowView];
    v42 = [v41 layer];
    v43 = *MEMORY[0x1E6979CE8];
    [v42 setCompositingFilter:*MEMORY[0x1E6979CE8]];

    v44 = [(TUIKeyPopupView *)self deepShadowView];
    v45 = [v44 layer];
    [v45 setCompositingFilter:v43];
  }

  else
  {
    if ([v48 colorAdaptiveBackground])
    {
      v44 = [(TUIKeyPopupView *)self borderView];
      v45 = [v44 layer];
      v46 = [(TUIKeyPopupView *)self renderTraits];
      v47 = [v46 extraFiltersForType:*MEMORY[0x1E6979D78]];
      [v45 setFilters:v47];
    }

    else
    {
      if (![v48 lightKeyboard])
      {
        goto LABEL_34;
      }

      v44 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979850]];
      v45 = [(TUIKeyPopupView *)self backdropView];
      v46 = [v45 layer];
      [v46 setCompositingFilter:v44];
    }
  }

LABEL_34:
}

- (void)_addShadowsAndBackgroundsIfNeeded
{
  v3 = [(TUIKeyPopupView *)self drawsShadows];
  v4 = MEMORY[0x1E695F058];
  if (v3)
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
    v12 = [(UIView *)self->_deepShadowView layer];
    LODWORD(v13) = 1045220557;
    [v12 setShadowOpacity:v13];

    v14 = [(UIView *)self->_deepShadowView layer];
    [v14 setShadowRadius:7.0];

    v15 = [(UIView *)self->_deepShadowView layer];
    [v15 setShadowOffset:{0.0, 6.0}];

    v16 = [(UIView *)self->_deepShadowView layer];
    [v16 setMasksToBounds:0];

    v17 = [MEMORY[0x1E69DC888] blackColor];
    v18 = [v17 CGColor];
    v19 = [(UIView *)self->_deepShadowView layer];
    [v19 setShadowColor:v18];

    [(TUIKeyPopupView *)self addSubview:self->_deepShadowView];
    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    keyShadowView = self->_keyShadowView;
    self->_keyShadowView = v20;

    [(UIView *)self->_keyShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_keyShadowView setUserInteractionEnabled:0];
    v22 = [(UIView *)self->_keyShadowView layer];
    LODWORD(v23) = 1045220557;
    [v22 setShadowOpacity:v23];

    v24 = [(UIView *)self->_keyShadowView layer];
    [v24 setShadowRadius:0.0];

    v25 = [(UIView *)self->_keyShadowView layer];
    [v25 setShadowOffset:{0.0, 1.0}];

    v26 = [(UIView *)self->_keyShadowView layer];
    [v26 setMasksToBounds:0];

    v27 = [MEMORY[0x1E69DC888] blackColor];
    v28 = [v27 CGColor];
    v29 = [(UIView *)self->_keyShadowView layer];
    [v29 setShadowColor:v28];

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
    v39 = [(UIKBVisualEffectView *)self->_backdropView subviews];
    v40 = [v39 count];

    if (v40 == 1)
    {
      v41 = [(UIKBVisualEffectView *)self->_backdropView contentView];
      [v41 addSubview:self->_backgroundMaskView];

      v42 = [MEMORY[0x1E69DC888] clearColor];
      [(UIKBVisualEffectView *)self->_backdropView setBackgroundColor:v42];
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
    v45 = [MEMORY[0x1E69DC888] clearColor];
    v46 = [v45 CGColor];
    v47 = [(TUIDrawingView *)self->_borderView shapeLayer];
    [v47 setFillColor:v46];

    v48 = [MEMORY[0x1E69DC888] systemFillColor];
    v49 = [v48 CGColor];
    v50 = [(TUIDrawingView *)self->_borderView shapeLayer];
    [v50 setStrokeColor:v49];

    [(TUIKeyPopupView *)self borderViewLineWidth];
    v52 = v51;
    v53 = [(TUIDrawingView *)self->_borderView shapeLayer];
    [v53 setLineWidth:v52];

    v54 = self->_borderView;

    [(TUIKeyPopupView *)self addSubview:v54];
  }
}

- (TUIKeyPopupView)initWithKey:(id)a3 renderTraits:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v11 = [v6 backingTree];
    backingTree = v8->_backingTree;
    v8->_backingTree = v11;

    v8->_layoutStyle = [v6 style];
    v13 = [v6 arrangedVariantsArray];
    arrangedVariantsArray = v8->_arrangedVariantsArray;
    v8->_arrangedVariantsArray = v13;

    v15 = [v6 primaryVariant];
    primaryVariant = v8->_primaryVariant;
    v8->_primaryVariant = v15;

    v8->_baseKeyOnRight = [v6 isBaseKeyOnRight];
    objc_storeStrong(&v8->_renderTraits, a4);
    if ([(UIKBTree *)v8->_backingTree state]== 16)
    {
      v8->_needsPopup = 1;
      [(TUIKeyPopupView *)v8 setVariantViewRows:1];
    }

    else
    {
      v8->_needsPopup = [v6 style] == 1;
    }

    [(TUIKeyPopupView *)v8 _addShadowsAndBackgroundsIfNeeded];
    [(TUIKeyPopupView *)v8 setUserInteractionEnabled:[(TUIKeyPopupView *)v8 wantsUserInteractionEnabled]];
  }

  return v8;
}

@end