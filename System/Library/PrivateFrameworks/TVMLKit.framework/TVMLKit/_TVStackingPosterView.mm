@interface _TVStackingPosterView
- (CGPoint)focusDirection;
- (CGSize)maxBoundsSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TVCellMetrics)_cellMetricsForMaxSize:(SEL)a3;
- (TVCellMetrics)cellMetrics;
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)a3;
- (UIEdgeInsets)tv_alignmentInsetsForExpectedWidth:(double)a3;
- (_TVStackingPosterView)initWithCoder:(id)a3;
- (_TVStackingPosterView)initWithFrame:(CGRect)a3;
- (double)_labelWidthForWidth:(double)a3 component:(id)a4 expansionAmount:(double)a5;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (void)_commonInit;
- (void)_configureSubviews;
- (void)_resetSubviews;
- (void)_updateComponentConstraints;
- (void)_updateShadowForLabel:(id)a3 inFocus:(BOOL)a4;
- (void)_updateSubviewHeirarchyWithComponents:(id)a3;
- (void)layoutSubviews;
- (void)setCellMetrics:(TVCellMetrics *)a3;
- (void)setComponents:(id)a3 mainImageComponent:(id)a4;
- (void)setConfiguresForCollectionViewCell:(BOOL)a3;
- (void)setFocusDirection:(CGPoint)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setMaxBoundsSize:(CGSize)a3;
- (void)setNeedsUpdateComponentLayout;
- (void)setOverlayView:(id)a3;
- (void)setPressed:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 focusUpdateContext:(id)a5 withAnimationCoordinator:(id)a6;
@end

@implementation _TVStackingPosterView

- (_TVStackingPosterView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVStackingPosterView;
  v3 = [(_TVStackingPosterView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVStackingPosterView *)v3 _commonInit];
  }

  return v4;
}

- (_TVStackingPosterView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TVStackingPosterView;
  v3 = [(_TVStackingPosterView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_TVStackingPosterView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  [v3 setWantsDimmingOverlay:1];
  [(_TVStackingPosterView *)self _setIdleModeLayoutAttributes:v3];
}

- (void)setMaxBoundsSize:(CGSize)a3
{
  if (self->_maxBoundsSize.width != a3.width || self->_maxBoundsSize.height != a3.height)
  {
    v17 = v3;
    v18 = v4;
    self->_maxBoundsSize = a3;
    v6 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 16);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7[2] = v10;
    memset(&v7[3], 0, 96);
    v8 = *MEMORY[0x277CBF3A8];
    v9 = v6;
    v7[0] = v8;
    v7[1] = v6;
    [(_TVStackingPosterView *)self setCellMetrics:v7];
  }
}

- (void)setComponents:(id)a3 mainImageComponent:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 copy];
  components = self->_components;
  self->_components = v8;

  [(_TVStackingPosterView *)self _resetSubviews];
  v10 = MEMORY[0x277CBF3A8];
  v11 = *MEMORY[0x277CBF3A8];
  v13 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 16);
  memset(&v51[12], 0, 96);
  v51[9] = v11;
  v51[2] = v12;
  memset(&v51[3], 0, 96);
  v51[10] = v13;
  v51[11] = v12;
  v51[0] = v11;
  v51[1] = v13;
  [(_TVStackingPosterView *)self setCellMetrics:v51];
  v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v47 objects:v52 count:16];
  v41 = v15;
  if (!v16)
  {
    v43 = 0;
LABEL_37:

    goto LABEL_39;
  }

  v17 = v16;
  v43 = 0;
  v18 = *v48;
  v19 = *v10;
  v20 = v10[1];
  v40 = @"marquee-and-show-on-highlight";
  v21 = v42;
  v44 = v14;
  do
  {
    v22 = 0;
    do
    {
      if (*v48 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v23 = *(*(&v47 + 1) + 8 * v22);
      if (!v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || [v23 conformsToProtocol:&unk_287E58AD8])
        {
          v7 = v23;
          v32 = v14;
          v33 = v7;
          goto LABEL_22;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_23;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v24 = v23;
      v25 = [v24 valueForTVViewStyle:@"tv-text-highlight-style"];
      if (([v24 tv_marqueeOnHighlight] & 1) == 0)
      {

        v14 = v44;
LABEL_21:
        v32 = v14;
        v33 = v23;
LABEL_22:
        [v32 addObject:{v33, v40}];
        goto LABEL_23;
      }

      if (!v43)
      {
        v26 = [[_TVAnimatedLabel alloc] initWithSize:v19, v20];
        v27 = [v24 tv_layout];

        if (v27)
        {
          v28 = [v24 tv_layout];
          [(UIView *)v26 tv_setLayout:v28];
        }

        [(_TVLabel *)v26 setNumberOfLines:1, v40];
        [(UIView *)v26 setValue:v25 forTVViewStyle:@"tv-text-highlight-style"];
        [(_TVLabel *)v26 setLineBreakMode:2];
        v29 = [v24 _defaultAttributes];
        v30 = [v29 copy];
        [(_TVAnimatedLabel *)v26 _setDefaultAttributes:v30];

        if ([v25 isEqualToString:@"marquee-on-highlight"])
        {
          v31 = [v24 highlightedTextColor];
          [(_TVAnimatedLabel *)v26 setHighlightedTextColor:v31];
        }

        else
        {
          [(_TVAnimatedLabel *)v26 setUnderPosterOutset:20.0];
        }

        if (([v25 isEqualToString:@"show-on-highlight"] & 1) != 0 || objc_msgSend(v25, "isEqualToString:", v40))
        {
          [(_TVStackingPosterView *)self _updateShadowForLabel:v26 inFocus:1];
          [(_TVAnimatedLabel *)v26 setHighlighted:1];
        }

        [v44 addObject:v26];
        v34 = [v24 tv_associatedIKViewElement];

        v43 = v26;
        if (v34)
        {
          v35 = [v24 tv_associatedIKViewElement];
          [(UIView *)v26 transferLayoutStylesFromElement:v35];
        }

        v15 = v41;
        v21 = v42;
      }

      [v21 addObject:{v24, v40}];

      v14 = v44;
LABEL_23:
      ++v22;
    }

    while (v17 != v22);
    v36 = [v15 countByEnumeratingWithState:&v47 objects:v52 count:16];
    v17 = v36;
  }

  while (v36);

  if (v43)
  {
    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __58___TVStackingPosterView_setComponents_mainImageComponent___block_invoke;
    v45[3] = &unk_279D6F830;
    v46 = v37;
    v15 = v37;
    [v21 enumerateObjectsUsingBlock:v45];
    v38 = [v15 copy];
    [(_TVAnimatedLabel *)v43 setAttributedStrings:v38];

    goto LABEL_37;
  }

  v43 = 0;
LABEL_39:
  [(_TVStackingPosterView *)self setFilteredComponents:v14, v40];
  [(_TVStackingPosterView *)self setMainImageComponent:v7];
  [(_TVStackingPosterView *)self _updateFocusSizeIncrease];
  [(_TVStackingPosterView *)self setAnimatedLabel:v43];
  v39 = [v42 copy];
  [(_TVStackingPosterView *)self setMarqueeLabels:v39];
}

- (void)setOverlayView:(id)a3
{
  v5 = a3;
  overlayView = self->_overlayView;
  v7 = v5;
  if (overlayView != v5)
  {
    [(UIView *)overlayView removeFromSuperview];
    objc_storeStrong(&self->_overlayView, a3);
  }

  [(_TVStackingPosterView *)self setNeedsLayout];
}

- (void)setConfiguresForCollectionViewCell:(BOOL)a3
{
  if (self->_configuresForCollectionViewCell != a3)
  {
    self->_configuresForCollectionViewCell = a3;
    v4 = [(_TVStackingPosterView *)self components];
    v5 = [v4 count];

    if (v5)
    {
      [(_TVStackingPosterView *)self _resetSubviews];

      [(_TVStackingPosterView *)self setNeedsLayout];
    }
  }
}

- (TVCellMetrics)cellMetrics
{
  v4 = self + 4;
  if (self[4].cellSize.width == *MEMORY[0x277CBF3A8] && self[4].cellSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = self;
    [(TVCellMetrics *)self maxBoundsSize];
    if (v7 <= 0.0)
    {
      [(TVCellMetrics *)v6 bounds];
      v8 = v10;
      v9 = v11;
    }

    else
    {
      [(TVCellMetrics *)v6 maxBoundsSize];
    }

    self = [(TVCellMetrics *)v6 _cellMetricsForMaxSize:v8, v9];
    *&v4->cellInsetAlt.bottom = v22;
    *&v4->cellMargin.top = v23;
    *&v4->cellMargin.bottom = v24;
    *&v4->cellPadding.bottom = v18;
    *&v4->cellInset.top = v19;
    *&v4->cellInset.bottom = v20;
    *&v4->cellInsetAlt.top = v21;
    v4->cellSize = v16;
    *&v4->cellPadding.top = v17;
    v6[3].cellInset.top = v4->cellMargin.left + v4->cellMargin.right;
  }

  v12 = *&v4->cellMargin.top;
  *&retstr->cellInsetAlt.bottom = *&v4->cellInsetAlt.bottom;
  *&retstr->cellMargin.top = v12;
  *&retstr->cellMargin.bottom = *&v4->cellMargin.bottom;
  v13 = *&v4->cellInset.top;
  *&retstr->cellPadding.bottom = *&v4->cellPadding.bottom;
  *&retstr->cellInset.top = v13;
  v14 = *&v4->cellInsetAlt.top;
  *&retstr->cellInset.bottom = *&v4->cellInset.bottom;
  *&retstr->cellInsetAlt.top = v14;
  v15 = *&v4->cellPadding.top;
  retstr->cellSize = v4->cellSize;
  *&retstr->cellPadding.top = v15;
  return self;
}

- (void)setNeedsUpdateComponentLayout
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277D768C8] + 16);
  v22 = *MEMORY[0x277D768C8];
  v23 = v4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21[9] = v3;
  v21[2] = v4;
  memset(&v21[3], 0, 96);
  v21[0] = v3;
  v21[1] = v22;
  [(_TVStackingPosterView *)self setCellMetrics:v21];
  v5 = MEMORY[0x277CBEB18];
  v6 = [(_TVStackingPosterView *)self marqueeLabels];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(_TVStackingPosterView *)self marqueeLabels];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54___TVStackingPosterView_setNeedsUpdateComponentLayout__block_invoke;
  v19[3] = &unk_279D6F830;
  v20 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v19];

  v10 = [(_TVStackingPosterView *)self marqueeLabels];
  v11 = [v10 firstObject];

  v12 = [(_TVStackingPosterView *)self animatedLabel];
  v13 = [v11 _defaultAttributes];
  v14 = [v13 copy];
  [v12 _setDefaultAttributes:v14];

  v15 = [(_TVStackingPosterView *)self animatedLabel];
  v16 = [v11 highlightedTextColor];
  [v15 setHighlightedTextColor:v16];

  v17 = [(_TVStackingPosterView *)self animatedLabel];
  v18 = [v9 copy];
  [v17 setAttributedStrings:v18];

  [(_TVStackingPosterView *)self _updateFocusSizeIncrease];
  [(_TVStackingPosterView *)self setNeedsLayout];
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v6 = a4;
  v7 = [(_TVStackingPosterView *)self mainImageComponent];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _TVStackingPosterView;
    v9 = [(_TVStackingPosterView *)&v12 _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  v10 = v9;

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_TVStackingPosterView *)self _cellMetricsForMaxSize:a3.width, a3.height];
  v3 = v5;
  v4 = v6;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  if (self->_requiresReconfiguration)
  {
    [(_TVStackingPosterView *)self _configureSubviews];
    self->_requiresReconfiguration = 0;
  }

  else
  {
    [(_TVStackingPosterView *)self _updateComponentConstraints];
  }

  v19.receiver = self;
  v19.super_class = _TVStackingPosterView;
  [(_TVStackingPosterView *)&v19 layoutSubviews];
  v3 = [(_TVStackingPosterView *)self mainImageComponent];
  if (v3)
  {
    v4 = v3;
    v5 = [(_TVStackingPosterView *)self overlayView];

    if (v5)
    {
      [(_TVStackingPosterView *)self bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      if (![(_TVStackingPosterView *)self configuresForCollectionViewCell])
      {
        [(_TVStackingPosterView *)self cellMetrics:0];
        v7 = 0.0;
        v9 = 0.0;
        v11 = v11 - (0.0 + 0.0);
        v13 = v13 - (0.0 + 0.0);
      }

      v14 = [(_TVStackingPosterView *)self overlayView];
      [v14 setFrame:{v7, v9, v11, v13}];

      v15 = [(_TVStackingPosterView *)self overlayView];
      v16 = [v15 superview];

      if (v16 != self)
      {
        v17 = [(_TVStackingPosterView *)self overlayView];
        v18 = [(_TVStackingPosterView *)self mainImageComponent];
        [(_TVStackingPosterView *)self insertSubview:v17 above:v18];
      }
    }
  }
}

- (CGPoint)focusDirection
{
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_mainImageComponent focusDirection];
  }

  else
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setFocusDirection:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if (objc_opt_respondsToSelector())
  {
    mainImageComponent = self->_mainImageComponent;

    [(UIView *)mainImageComponent setFocusDirection:v4 animated:x, y];
  }
}

- (void)setPressed:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_mainImageComponent setPressed:v6 animated:v5 completion:v8];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    mainImageComponent = self->_mainImageComponent;

    [(UIView *)mainImageComponent setHighlighted:v3];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 focusUpdateContext:(id)a5 withAnimationCoordinator:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  if (v8)
  {
    if (!v7)
    {
      v12 = [(_TVStackingPosterView *)self subviews];
      v13 = [v12 count];

      if (!v13)
      {
        [(_TVStackingPosterView *)self layoutIfNeeded];
      }
    }
  }

  else
  {
    [(_TVStackingPosterView *)self bounds];
    if (CGRectEqualToRect(v41, *MEMORY[0x277CBF3A0]))
    {
      goto LABEL_27;
    }
  }

  v14 = [(_TVStackingPosterView *)self mainImageComponent];
  if ([v14 conformsToProtocol:&unk_287E58AD8])
  {
    v15 = [(_TVStackingPosterView *)self mainImageComponent];
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    [v15 setSelected:v8 animated:v7 withAnimationCoordinator:v11];
  }

  else
  {
    [v15 setSelected:v8 animated:v7];
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke;
  v37[3] = &unk_279D6F858;
  v37[4] = self;
  v39 = v8;
  v40 = v7;
  v38 = v11;
  v16 = MEMORY[0x26D6AFBB0](v37);
  v16[2]();
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_2;
  v32[3] = &unk_279D6F858;
  v17 = v15;
  v33 = v17;
  v34 = self;
  v35 = v8;
  v36 = v7;
  v18 = MEMORY[0x26D6AFBB0](v32);
  v19 = 0.0;
  if (v7)
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v19 = v8 ? 0.12 : 0.5;
    if (IsReduceMotionEnabled)
    {
      v19 = 0.0;
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_4;
  v29[3] = &unk_279D6F8A8;
  v29[4] = self;
  v30 = v8;
  v31 = v7;
  *&v29[5] = v19;
  v21 = MEMORY[0x26D6AFBB0](v29);
  if (v7)
  {
    v22 = MEMORY[0x277D75D18];
    v23 = UIAccessibilityIsReduceMotionEnabled();
    v24 = 0.12;
    if (!v8)
    {
      v24 = 0.5;
    }

    if (v23)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v24;
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __90___TVStackingPosterView_setSelected_animated_focusUpdateContext_withAnimationCoordinator___block_invoke_6;
    v26[3] = &unk_279D6F8D0;
    v27 = v18;
    v28 = v21;
    [v22 animateWithDuration:327684 delay:v26 options:0 animations:v25 completion:0.0];
  }

  else
  {
    v18[2](v18);
    v21[2](v21);
  }

LABEL_27:
}

- (UIEdgeInsets)tv_alignmentInsetsForExpectedWidth:(double)a3
{
  [(_TVStackingPosterView *)self _cellMetricsForMaxSize:a3, 0.0];
  v3 = v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_TVStackingPosterView *)self mainImageComponent];
  v7 = [v6 conformsToProtocol:&unk_287E58AD8];

  if (v7)
  {
    v8 = [(_TVStackingPosterView *)self mainImageComponent];
    [v8 selectionMarginsForSize:{width, height}];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [(_TVStackingPosterView *)self mainImageComponent];
    v18 = [v17 valueForTVViewStyle:@"tv-focus-align"];
    v19 = [v18 isEqualToString:@"bottom"];

    if (v19)
    {
      v20 = v10 + v14;
      v21 = 0.0;
    }

    else
    {
      v22 = [(_TVStackingPosterView *)self mainImageComponent];
      v23 = [v22 valueForTVViewStyle:@"tv-focus-align"];
      v24 = [v23 isEqualToString:@"top"];

      if (v24)
      {
        v21 = v14 + v10;
      }

      else
      {
        v21 = v14;
      }

      v20 = 0.0;
      if (!v24)
      {
        v20 = v10;
      }
    }
  }

  else
  {
    v20 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 8);
    v21 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
  }

  v25 = v12;
  v26 = v16;
  result.right = v26;
  result.bottom = v21;
  result.left = v25;
  result.top = v20;
  return result;
}

- (void)_resetSubviews
{
  v3 = [(_TVStackingPosterView *)self subviews];
  [v3 makeObjectsPerformSelector:sel_removeFromSuperview];

  v4 = [(_TVStackingPosterView *)self constraints];
  [(_TVStackingPosterView *)self removeConstraints:v4];

  topAnchorConstraint = self->_topAnchorConstraint;
  self->_topAnchorConstraint = 0;

  bottomAnchorConstraint = self->_bottomAnchorConstraint;
  self->_bottomAnchorConstraint = 0;

  topImageConstraint = self->_topImageConstraint;
  self->_topImageConstraint = 0;

  bottomImageConstraint = self->_bottomImageConstraint;
  self->_bottomImageConstraint = 0;

  self->_topAnchorConstant = 0.0;
  self->_bottomAnchorConstant = 0.0;
  self->_topImageConstant = 0.0;
  self->_bottomImageConstant = 0.0;
  self->_requiresReconfiguration = 1;
}

- (void)_updateSubviewHeirarchyWithComponents:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_TVStackingPosterView *)self subviews];
  v6 = [v5 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([v4 containsObject:v12] & 1) == 0)
        {
          [v12 removeFromSuperview];
          [v7 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63___TVStackingPosterView__updateSubviewHeirarchyWithComponents___block_invoke;
  v14[3] = &unk_279D6F8F8;
  v15 = v7;
  v16 = self;
  v13 = v7;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v14];
}

- (void)_configureSubviews
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = [(_TVStackingPosterView *)self filteredComponents];
  v4 = [v3 count];

  if (!v4)
  {
    return;
  }

  v5 = [(_TVStackingPosterView *)self filteredComponents];
  v6 = [(_TVStackingPosterView *)self mainImageComponent];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  [(_TVStackingPosterView *)self cellMetrics];
  v71 = [(_TVStackingPosterView *)self configuresForCollectionViewCell];
  v73 = *&v81;
  v68 = [MEMORY[0x277CBEB18] array];
  labelWidthExpansionAmount = self->_labelWidthExpansionAmount;
  [(_TVStackingPosterView *)self _updateSubviewHeirarchyWithComponents:v5];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v5;
  v76 = [obj countByEnumeratingWithState:&v77 objects:v94 count:16];
  v7 = 0;
  if (!v76)
  {
    v74 = 0;
    v69 = 0;
    goto LABEL_33;
  }

  v74 = 0;
  v69 = 0;
  v8 = *(MEMORY[0x277D768C8] + 16);
  v75 = *v78;
  v9 = 0.0;
  do
  {
    for (i = 0; i != v76; ++i)
    {
      if (*v78 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v77 + 1) + 8 * i);
      if (v11 == v6)
      {
        v12 = v6;
        [v12 tv_margin];
        v14 = v33;
        v18 = v34;
        v32 = 0.0;
        if (v71)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = -(*(&v82 + 1) + *(&v83 + 1));
        }

        v27 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:v35];
        v36 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
        v93[0] = v27;
        v93[1] = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
        [(_TVStackingPosterView *)self addConstraints:v37];
      }

      else
      {
        v12 = v11;
        [v12 tv_margin];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = v73 - (v15 + v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v12 tv_showOnHighlight];
          v23 = v22;
          v24 = 0.0;
          if (!v22)
          {
            v24 = 1.0;
          }

          [v12 setAlpha:v24];
          [(_TVStackingPosterView *)self _labelWidthForWidth:v12 component:v21 expansionAmount:labelWidthExpansionAmount];
          v26 = v25;
          v27 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v25];
          if ((v23 & 1) == 0)
          {
            [v68 addObject:v27];
          }

          v28 = v12;
          [v28 tv_textSizeForWidth:v26];
          v30 = v29;
          v31 = [v28 layer];

          [v31 setZPosition:901.0];
          v32 = 8.0;
        }

        else
        {
          [v12 sizeThatFits:{v21, 3.40282347e38}];
          v30 = v38;
          v27 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v21];
          v32 = 0.0;
        }

        v36 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v30 + v32 * 2.0];
        v37 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:v16 - v20];
        v92[0] = v27;
        v92[1] = v36;
        v92[2] = v37;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];
        [(_TVStackingPosterView *)self addConstraints:v39];
      }

      if (v12)
      {
        if (v7)
        {
          v40 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:3 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:{fmax(v14, v8) - v9 - v32}];
          [(_TVStackingPosterView *)self addConstraint:v40];
          if (v12 == v6)
          {
            v42 = v69;
            v43 = v74;
            v69 = v40;
            goto LABEL_26;
          }

          v41 = v74;
          v42 = v74;
          v43 = v40;
          if (v7 == v6)
          {
LABEL_26:
            v44 = v40;

            v41 = v43;
          }

          v74 = v41;
        }

        v45 = v12;

        v7 = v45;
        v9 = v32;
        v8 = v18;
      }
    }

    v76 = [obj countByEnumeratingWithState:&v77 objects:v94 count:16];
  }

  while (v76);
LABEL_33:

  if (v6)
  {
    [(_TVStackingPosterView *)self bringSubviewToFront:v6];
    v46 = *&v82;
    if (v71)
    {
      v46 = 0.0;
      v47 = 0.0;
    }

    else
    {
      v47 = -*&v83;
    }

    v48 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v46];
    topImageConstraint = self->_topImageConstraint;
    self->_topImageConstraint = v48;

    v50 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:v47];
    bottomImageConstraint = self->_bottomImageConstraint;
    self->_bottomImageConstraint = v50;

    v52 = self->_bottomImageConstraint;
    v91[0] = self->_topImageConstraint;
    v91[1] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
    [(_TVStackingPosterView *)self addConstraints:v53];

    v54 = v69;
    objc_storeStrong(&self->_topAnchorConstraint, v69);
    v55 = v74;
    objc_storeStrong(&self->_bottomAnchorConstraint, v74);
    [(NSLayoutConstraint *)self->_topImageConstraint constant];
    self->_topImageConstant = v56;
    [(NSLayoutConstraint *)self->_bottomImageConstraint constant];
    self->_bottomImageConstant = v57;
    [v69 constant];
    self->_topAnchorConstant = v58;
    [v74 constant];
    self->_bottomAnchorConstant = v59;
    v60 = v68;
    v61 = [v68 tv_arrayByMappingObjectsUsingBlock:&__block_literal_global_27];
    [(_TVStackingPosterView *)self setVisibleLabelWidths:v61];

    v62 = v68;
    labelWidthConstraints = self->_labelWidthConstraints;
    self->_labelWidthConstraints = v62;
  }

  else
  {
    v64 = [(_TVStackingPosterView *)self subviews];
    labelWidthConstraints = [v64 firstObject];

    [labelWidthConstraints tv_margin];
    v66 = [MEMORY[0x277CCAAD0] constraintWithItem:labelWidthConstraints attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v65];
    v90 = v66;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
    [(_TVStackingPosterView *)self addConstraints:v67];

    v60 = v68;
    v54 = v69;
    v55 = v74;
  }
}

- (void)_updateComponentConstraints
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = [(_TVStackingPosterView *)self constraints];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __52___TVStackingPosterView__updateComponentConstraints__block_invoke;
  v75[3] = &unk_279D6F940;
  v45 = v3;
  v76 = v45;
  v4 = MEMORY[0x26D6AFBB0](v75);
  v5 = MEMORY[0x277D768C8];
  v6 = *MEMORY[0x277D768C8];
  v68 = *(MEMORY[0x277D768C8] + 16);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v63 = 0u;
  v64 = 0u;
  v59 = v68;
  v60 = 0u;
  v7 = *MEMORY[0x277CBF3A8];
  v65 = 0u;
  v66 = v7;
  v67 = v6;
  v61 = 0u;
  v62 = 0u;
  v57 = v7;
  v58 = v6;
  [(_TVStackingPosterView *)self setCellMetrics:&v57];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  [(_TVStackingPosterView *)self cellMetrics];
  v50 = *&v57;
  v8 = MEMORY[0x277CBEB18];
  v9 = [(_TVStackingPosterView *)self visibleLabelWidths];
  v46 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [(_TVStackingPosterView *)self filteredComponents];
  v10 = [obj countByEnumeratingWithState:&v53 objects:v77 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = v5[2];
    v51 = *v54;
    v47 = *v5;
    v52 = 0.0;
    v48 = v13;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v54 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v53 + 1) + 8 * i);
        v16 = [(_TVStackingPosterView *)self mainImageComponent];

        if (v15 == v16)
        {
          v31 = [(_TVStackingPosterView *)self configuresForCollectionViewCell];
          v30 = 0.0;
          if (v31)
          {
            v32 = 0.0;
          }

          else
          {
            v32 = -(*(&v58 + 1) + *(&v59 + 1));
          }

          if (v31)
          {
            v33 = 0.0;
          }

          else
          {
            v33 = *&v58;
          }

          if (v31)
          {
            v34 = 0.0;
          }

          else
          {
            v34 = -*&v59;
          }

          v35 = (v4)[2](v4, v15, self, 7);
          [v35 setConstant:v32];
          v36 = (v4)[2](v4, v15, self, 3);
          [v36 setConstant:v33];
          v37 = (v4)[2](v4, v15, self, 4);
          [v37 setConstant:v34];
          v18 = v47;
          v22 = v48;
        }

        else
        {
          [v15 tv_margin];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v25 = v50 - (v19 + v23);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(_TVStackingPosterView *)self _labelWidthForWidth:v15 component:v25 expansionAmount:self->_labelWidthExpansionAmount];
            v25 = v26;
            if (([v15 tv_showOnHighlight] & 1) == 0)
            {
              v27 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
              [v46 addObject:v27];
            }

            [v15 tv_textSizeForWidth:v25];
            v29 = v28;
            v30 = 8.0;
          }

          else
          {
            [v15 sizeThatFits:{v25, 3.40282347e38}];
            v29 = v38;
            v30 = 0.0;
          }

          v35 = (v4)[2](v4, v15, 0, 7);
          [v35 setConstant:v25];
          v36 = (v4)[2](v4, v15, 0, 8);
          [v36 setConstant:v29 + v30 * 2.0];
          v37 = (v4)[2](v4, v15, self, 9);
          [v37 setConstant:v20 - v24];
        }

        if (v15)
        {
          if (v12)
          {
            v39 = (v4)[2](v4, v15, v12, 3);
            [v39 setConstant:{fmax(v18, v13) - v52 - v30}];
          }

          v40 = v15;

          v52 = v30;
          v12 = v40;
          v13 = v22;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v53 objects:v77 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  [(NSLayoutConstraint *)self->_topImageConstraint constant];
  self->_topImageConstant = v41;
  [(NSLayoutConstraint *)self->_bottomImageConstraint constant];
  self->_bottomImageConstant = v42;
  [(NSLayoutConstraint *)self->_topAnchorConstraint constant];
  self->_topAnchorConstant = v43;
  [(NSLayoutConstraint *)self->_bottomAnchorConstraint constant];
  self->_bottomAnchorConstant = v44;
  [(_TVStackingPosterView *)self setVisibleLabelWidths:v46];
}

- (TVCellMetrics)_cellMetricsForMaxSize:(SEL)a3
{
  height = a4.height;
  width = a4.width;
  v149 = *MEMORY[0x277D85DE8];
  v5 = [(_TVStackingPosterView *)self filteredComponents];
  v6 = [(_TVStackingPosterView *)self mainImageComponent];
  v7 = MEMORY[0x277D768C8];
  v8 = *MEMORY[0x277D768C8];
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v108 = v11;
  v106 = v12;
  v113 = *MEMORY[0x277D768C8];
  if ([v6 conformsToProtocol:&unk_287E58AD8])
  {
    [v6 selectionMarginsForSize:{v12, v11}];
    v14 = v13;
    v103 = v16;
    v104 = v15;
    v18 = v17;
    v19 = [v6 valueForTVViewStyle:@"tv-focus-align"];
    v20 = [v19 isEqualToString:@"bottom"];

    if (v20)
    {
      v97 = v14 + v18;
      v98 = 0.0;
    }

    else
    {
      v21 = [v6 valueForTVViewStyle:@"tv-focus-align"];
      v22 = [v21 isEqualToString:@"top"];

      if (v22)
      {
        v23 = v18 + v14;
      }

      else
      {
        v23 = v18;
      }

      v24 = 0.0;
      if (!v22)
      {
        v24 = v14;
      }

      v97 = v24;
      v98 = v23;
    }
  }

  else
  {
    v103 = *(v7 + 24);
    v104 = *(v7 + 8);
    v97 = v8;
    v98 = v9;
  }

  [(UIView *)self tv_padding];
  v100 = v28;
  v101 = v27;
  v29 = width - (v25 + v26);
  v30 = v25 + v26 < width;
  v31 = 0.0;
  if (v25 + v26 >= width)
  {
    v26 = 0.0;
  }

  v107 = v26;
  if (v30)
  {
    v31 = v25;
  }

  v109 = v31;
  if (v30)
  {
    width = v29;
  }

  v32 = [(_TVStackingPosterView *)self mainImageComponent];
  v33 = MEMORY[0x277CBF3A8];
  v34 = *(MEMORY[0x277CBF3A8] + 8);

  if (v32)
  {
    v35 = *v33;
    [v6 tv_sizeThatFits:{*v33, v34}];
    v38 = v37;
    v39 = v36;
    if (v37 == v35 && v36 == v34)
    {
      [v6 frame];
      v38 = v41;
      v39 = v42;
    }

    if (v38 > width || v39 > height)
    {
      v44 = width / v38;
      v45 = 1.0;
      if (width <= 0.0)
      {
        v44 = 1.0;
      }

      if (height > 0.0)
      {
        v45 = height / v39;
      }

      v46 = fmin(v44, v45);
      v38 = floor(v38 * v46);
      v39 = floor(v39 * v46);
    }

    [v6 tv_margin];
    v112 = v49;
    v113 = v48;
    v51 = v50;
    if (width == 0.0)
    {
      v53 = v38;
    }

    else
    {
      v52 = v47;
      if ([(_TVStackingPosterView *)self configuresForCollectionViewCell])
      {
        v47 = v52;
        v53 = width - (v52 + v51);
        if (v38 <= 0.0)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = floor(v39 * (v53 / v38));
        }
      }

      else
      {
        v53 = v38;
        v47 = v52;
      }
    }

    v99 = v47;
    v106 = v53;
    width = v47 + v51 + v53;
    v108 = v39;
    v34 = v39;
  }

  else
  {
    v99 = *v10;
    v112 = v9;
  }

  v54 = v6 != 0;
  v110 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v55 = v5;
  v56 = [v55 countByEnumeratingWithState:&v144 objects:v148 count:16];
  v57 = v10[1];
  if (v56)
  {
    v58 = 0;
    v59 = *v145;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v145 != v59)
        {
          objc_enumerationMutation(v55);
        }

        v61 = *(*(&v144 + 1) + 8 * i);
        if (v61 == v6)
        {
          v54 = 0;
          v79 = fmax(v9, v113);
          v57 = v79 + v57;
          v9 = v112;
        }

        else
        {
          [*(*(&v144 + 1) + 8 * i) tv_margin];
          v63 = v62;
          v65 = v64;
          v67 = v66;
          v69 = v68;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v71 = width - (v65 + v69);
          if (isKindOfClass)
          {
            [(_TVStackingPosterView *)self _labelWidthForWidth:v61 component:v71 expansionAmount:v103 + v104];
            v73 = v72;
            v74 = v61;
            [v74 tv_textSizeForWidth:v73];
            v76 = v75;
            v77 = [MEMORY[0x277CCABB0] numberWithDouble:v75];
            v78 = [MEMORY[0x277CCABB0] numberWithInteger:v58];
            [v110 setObject:v77 forKeyedSubscript:v78];
          }

          else
          {
            [v61 sizeThatFits:{v71, 3.40282347e38}];
            v76 = v80;
          }

          v79 = fmax(v9, v63) + v76;
          if (v54)
          {
            v57 = v57 + v79;
          }

          v9 = v67;
        }

        v34 = v34 + v79;
        ++v58;
      }

      v56 = [v55 countByEnumeratingWithState:&v144 objects:v148 count:16];
    }

    while (v56);
  }

  v81 = v101 + v100 + v9 + v34;
  v82 = v109 + v99;
  v83 = v81 - height;
  if (v81 > height && v83 < v108)
  {
    v85 = floor(v106 / v108 * (v108 - v83));
    v82 = v82 + floor((v106 - v85) * 0.5);
    v81 = v81 - v83;
    v108 = v108 - v83;
    v106 = v85;
  }

  v136 = 0;
  v137 = &v136;
  v138 = 0x4010000000;
  v139 = &unk_26CE937F5;
  v140 = v101;
  v141 = v109;
  v142 = v100;
  v143 = v107;
  v128 = 0;
  v129 = &v128;
  v130 = 0x4010000000;
  v131 = &unk_26CE937F5;
  v132 = v101;
  v133 = v109;
  v134 = v100;
  v135 = v107;
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __48___TVStackingPosterView__cellMetricsForMaxSize___block_invoke;
  v121[3] = &unk_279D6F968;
  v127 = width;
  v125 = &v128;
  v126 = &v136;
  v86 = v6;
  v122 = v86;
  v87 = v55;
  v123 = v87;
  v88 = v110;
  v124 = v88;
  [v87 enumerateObjectsUsingBlock:v121];
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __48___TVStackingPosterView__cellMetricsForMaxSize___block_invoke_2;
  v114[3] = &unk_279D6F990;
  v120 = width;
  v89 = v87;
  v115 = v89;
  v118 = &v128;
  v119 = &v136;
  v90 = v86;
  v116 = v90;
  v91 = v88;
  v117 = v91;
  [v89 enumerateObjectsWithOptions:2 usingBlock:v114];
  v92 = v109 + v107 + width;
  retstr->cellSize.width = v92;
  retstr->cellSize.height = v81;
  if (v6)
  {
    retstr->cellPadding.top = v101 + v57;
    retstr->cellPadding.left = v82;
    retstr->cellPadding.bottom = v81 - (v101 + v57 + v108);
    retstr->cellPadding.right = v92 - (v106 + v82);
  }

  else
  {
    v93 = *(MEMORY[0x277D768C8] + 16);
    *&retstr->cellPadding.top = *MEMORY[0x277D768C8];
    *&retstr->cellPadding.bottom = v93;
  }

  v94 = *(v137 + 3);
  *&retstr->cellInset.top = *(v137 + 2);
  *&retstr->cellInset.bottom = v94;
  v95 = *(v129 + 3);
  *&retstr->cellInsetAlt.top = *(v129 + 2);
  *&retstr->cellInsetAlt.bottom = v95;
  retstr->cellMargin.top = v97;
  retstr->cellMargin.left = v104;
  retstr->cellMargin.bottom = v98;
  retstr->cellMargin.right = v103;

  _Block_object_dispose(&v128, 8);
  _Block_object_dispose(&v136, 8);

  return result;
}

- (double)_labelWidthForWidth:(double)a3 component:(id)a4 expansionAmount:(double)a5
{
  v7 = a4;
  if ([v7 tv_showOnHighlight])
  {
    v8 = [v7 tv_marqueeOnHighlight];
    v9 = 40.0;
    if (!v8)
    {
      v9 = 0.0;
    }

    a3 = v9 + a5 + a3;
  }

  return a3;
}

- (void)_updateShadowForLabel:(id)a3 inFocus:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11 = v5;
  if (v4)
  {
    if (!_updateShadowForLabel_inFocus____ShadowColor)
    {
      v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
      v7 = _updateShadowForLabel_inFocus____ShadowColor;
      _updateShadowForLabel_inFocus____ShadowColor = v6;

      v5 = v11;
    }

    [v5 setShadowColor:?];
    v8 = 2.0;
    v9 = 0.0;
    v10 = 6.0;
  }

  else
  {
    [v5 setShadowColor:0];
    v9 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
    v10 = 0.0;
  }

  [v11 setShadowOffset:{v9, v8}];
  [v11 setShadowBlur:v10];
}

- (CGSize)maxBoundsSize
{
  width = self->_maxBoundsSize.width;
  height = self->_maxBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setCellMetrics:(TVCellMetrics *)a3
{
  self->_cellMetrics.cellSize = a3->cellSize;
  v3 = *&a3->cellInset.bottom;
  v5 = *&a3->cellPadding.top;
  v4 = *&a3->cellPadding.bottom;
  *&self->_cellMetrics.cellInset.top = *&a3->cellInset.top;
  *&self->_cellMetrics.cellInset.bottom = v3;
  *&self->_cellMetrics.cellPadding.top = v5;
  *&self->_cellMetrics.cellPadding.bottom = v4;
  v6 = *&a3->cellMargin.bottom;
  v8 = *&a3->cellInsetAlt.top;
  v7 = *&a3->cellInsetAlt.bottom;
  *&self->_cellMetrics.cellMargin.top = *&a3->cellMargin.top;
  *&self->_cellMetrics.cellMargin.bottom = v6;
  *&self->_cellMetrics.cellInsetAlt.top = v8;
  *&self->_cellMetrics.cellInsetAlt.bottom = v7;
}

@end