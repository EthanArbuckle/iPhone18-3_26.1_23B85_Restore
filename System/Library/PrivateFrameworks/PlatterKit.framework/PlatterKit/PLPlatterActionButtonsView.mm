@interface PLPlatterActionButtonsView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PLPlatterActionButtonsView)initWithFrame:(CGRect)frame actions:(id)actions cornerRadius:(double)radius shouldVerticallyStack:(BOOL)stack shouldGetGlassBackground:(BOOL)background glassState:(unint64_t)state glassSmoothness:(double)smoothness glassId:(int64_t)self0 glassLuminance:(double)self1;
- (id)senderForActionWithIdentifier:(id)identifier;
- (unint64_t)_widthMultipleForVerticallyStackedButtonsWithCount:(unint64_t)count;
- (unint64_t)actionButtonCount;
- (void)_hideNonDefaultActionButtons;
- (void)_layoutButtonsStackView;
- (void)_layoutClippingView;
- (void)_revealNonDefaultActionButtons;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setBackgroundMaterialRecipe:(int64_t)recipe;
- (void)setBackgroundTintColor:(id)color;
- (void)setCustomBackgroundColor:(id)color;
- (void)setHighlightDefaultActionButton:(BOOL)button;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setTextColor:(id)color;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PLPlatterActionButtonsView

- (PLPlatterActionButtonsView)initWithFrame:(CGRect)frame actions:(id)actions cornerRadius:(double)radius shouldVerticallyStack:(BOOL)stack shouldGetGlassBackground:(BOOL)background glassState:(unint64_t)state glassSmoothness:(double)smoothness glassId:(int64_t)self0 glassLuminance:(double)self1
{
  backgroundCopy = background;
  stackCopy = stack;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v85 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v82.receiver = self;
  v82.super_class = PLPlatterActionButtonsView;
  height = [(PLPlatterActionButtonsView *)&v82 initWithFrame:x, y, width, height];
  v23 = height;
  if (height)
  {
    height->_verticallyStacked = stackCopy;
    height->_hasGlassBackground = backgroundCopy;
    height->_backgroundMaterialRecipe = 1;
    materialGroupNameBase = height->_materialGroupNameBase;
    height->_materialGroupNameBase = @"PLPlatterActionButtonsView";

    v23->_adjustsFontForContentSizeCategory = 1;
    v23->_glassLuminance = luminance;
    [(PLPlatterActionButtonsView *)v23 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    rect = v31;
    v32 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v25, v31, v27, v29}];
    clippingView = v23->_clippingView;
    v23->_clippingView = v32;

    [(PLPlatterActionButtonsView *)v23 addSubview:v23->_clippingView];
    v34 = objc_alloc(MEMORY[0x277D75A68]);
    v35 = [v34 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    buttonsStackView = v23->_buttonsStackView;
    v23->_buttonsStackView = v35;

    [(UIStackView *)v23->_buttonsStackView setAutoresizingMask:2];
    [(UIStackView *)v23->_buttonsStackView setAxis:stackCopy];
    [(UIStackView *)v23->_buttonsStackView setDistribution:1];
    [(UIStackView *)v23->_buttonsStackView setSpacing:8.0];
    [(UIView *)v23->_clippingView addSubview:v23->_buttonsStackView];
    v64 = [actionsCopy count];
    [(PLPlatterActionButtonsView *)v23 _maxAllowedButtonWidth];
    v38 = v37;
    v39 = 1.0;
    v65 = stackCopy;
    if (stackCopy)
    {
      v39 = -[PLPlatterActionButtonsView _widthMultipleForVerticallyStackedButtonsWithCount:](v23, "_widthMultipleForVerticallyStackedButtonsWithCount:", [actionsCopy count]);
    }

    v86.origin.x = v26;
    v86.origin.y = rect;
    v86.size.width = v28;
    v86.size.height = v30;
    v40 = CGRectGetHeight(v86);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v66 = actionsCopy;
    recta = actionsCopy;
    v41 = [recta countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = v38 * v39;
      v44 = *v79;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v79 != v44)
          {
            objc_enumerationMutation(recta);
          }

          v46 = *(*(&v78 + 1) + 8 * i);
          v47 = [[PLPlatterActionButton alloc] initWithFrame:0.0, 0.0, v43, v40];
          [(PLPlatterActionButton *)v47 setAdjustsFontForContentSizeCategory:[(PLPlatterActionButtonsView *)v23 adjustsFontForContentSizeCategory]];
          [(PLPlatterActionButton *)v47 setIsBackgroundGlass:backgroundCopy];
          [(PLPlatterActionButton *)v47 setCornerRadius:radius];
          if (backgroundCopy)
          {
            v48 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:1 size:1 smoothness:state == 1 subdued:smoothness];
            v49 = v48;
            if (state - 1 <= 1)
            {
              [v48 setSubvariant:@"lockscreenNotifications"];
              [v49 setAdaptiveFixedLuminance:luminance];
            }

            [v49 setBackdropGroupName:@"lockscreenElements"];
            [v49 setIdentifier:id];
            [(PLPlatterActionButton *)v47 _setBackground:v49];
          }

          else
          {
            [(PLPlatterActionButton *)v47 setBackgroundMaterialRecipe:v23->_backgroundMaterialRecipe];
            [(PLPlatterActionButton *)v47 setMaterialGroupNameBase:v23->_materialGroupNameBase];
          }

          [(PLPlatterActionButton *)v47 addAction:v46 forControlEvents:64];
          title = [v46 title];
          [(PLPlatterActionButton *)v47 setTitle:title];

          if ([v46 pl_isDefaultAction])
          {
            [(PLPlatterActionButtonsView *)v23 setDefaultActionButton:v47];
            objc_storeStrong(&v23->_defaultAction, v46);
          }

          [(UIStackView *)v23->_buttonsStackView addArrangedSubview:v47];
        }

        v42 = [recta countByEnumeratingWithState:&v78 objects:v84 count:16];
      }

      while (v42);
    }

    arrangedSubviews = [(UIStackView *)v23->_buttonsStackView arrangedSubviews];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __162__PLPlatterActionButtonsView_initWithFrame_actions_cornerRadius_shouldVerticallyStack_shouldGetGlassBackground_glassState_glassSmoothness_glassId_glassLuminance___block_invoke;
    v75[3] = &unk_278425290;
    v52 = v23;
    v76 = v52;
    v53 = arrangedSubviews;
    v77 = v53;
    [v53 enumerateObjectsUsingBlock:v75];
    [(UIView *)v23->_clippingView frame];
    v54 = CGRectGetHeight(v87);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v55 = v53;
    v56 = [v55 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v72;
      v59 = 90.0;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v72 != v58)
          {
            objc_enumerationMutation(v55);
          }

          [*(*(&v71 + 1) + 8 * j) sizeThatFits:{v38, v54}];
          v59 = fmin(fmax(v59, v61), v38);
        }

        v57 = [v55 countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v57);
    }

    else
    {
      v59 = 90.0;
    }

    if (v65)
    {
      v62 = [v52 _widthMultipleForVerticallyStackedButtonsWithCount:v64];
      actionsCopy = v66;
    }

    else
    {
      actionsCopy = v66;
      v62 = v64;
    }

    v52[55] = v59 * v62;
    [v52 defaultWidth];
    [v52 setStretchedWidth:?];
  }

  return v23;
}

void __162__PLPlatterActionButtonsView_initWithFrame_actions_cornerRadius_shouldVerticallyStack_shouldGetGlassBackground_glassState_glassSmoothness_glassId_glassLuminance___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a2;
    v11 = [v5 leadingAnchor];

    v6 = [*(a1 + 40) objectAtIndex:a3 - 1];
    v7 = [v6 trailingAnchor];
    [v11 constraintEqualToAnchor:v7 constant:8.0];
  }

  else
  {
    v8 = *(*(a1 + 32) + 424);
    v9 = a2;
    v11 = [v8 layoutMarginsGuide];
    v6 = [v9 leadingAnchor];

    v7 = [v11 leadingAnchor];
    [v6 constraintEqualToAnchor:v7];
  }
  v10 = ;
  [v10 setActive:1];
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = PLPlatterActionButtonsView;
  superviewCopy = superview;
  [(PLPlatterActionButtonsView *)&v5 willMoveToSuperview:superviewCopy];
  layer = [superviewCopy layer];

  [layer setAllowsGroupBlending:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLPlatterActionButtonsView;
  [(PLPlatterActionButtonsView *)&v3 layoutSubviews];
  [(PLPlatterActionButtonsView *)self _layoutButtonsStackView];
  [(PLPlatterActionButtonsView *)self _layoutClippingView];
}

- (id)senderForActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  arrangedSubviews = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__PLPlatterActionButtonsView_senderForActionWithIdentifier___block_invoke;
  v9[3] = &unk_2784252E0;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [arrangedSubviews bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __60__PLPlatterActionButtonsView_senderForActionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__PLPlatterActionButtonsView_senderForActionWithIdentifier___block_invoke_2;
    v6[3] = &unk_2784252B8;
    v7 = *(a1 + 32);
    v8 = &v9;
    [v3 enumerateEventHandlers:v6];
  }

  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void __60__PLPlatterActionButtonsView_senderForActionWithIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = [a2 identifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a6 = 1;
  }
}

- (unint64_t)actionButtonCount
{
  buttonsStackView = [(PLPlatterActionButtonsView *)self buttonsStackView];
  arrangedSubviews = [buttonsStackView arrangedSubviews];
  v4 = [arrangedSubviews count];

  return v4;
}

- (void)setHighlightDefaultActionButton:(BOOL)button
{
  buttonCopy = button;
  defaultActionButton = [(PLPlatterActionButtonsView *)self defaultActionButton];
  if (defaultActionButton)
  {
    highlightDefaultActionButton = self->_highlightDefaultActionButton;

    if (highlightDefaultActionButton != buttonCopy)
    {
      self->_highlightDefaultActionButton = buttonCopy;
      defaultActionButton2 = [(PLPlatterActionButtonsView *)self defaultActionButton];
      [defaultActionButton2 setHighlighted:buttonCopy];

      if (buttonCopy)
      {

        [(PLPlatterActionButtonsView *)self _hideNonDefaultActionButtons];
      }

      else
      {

        [(PLPlatterActionButtonsView *)self _revealNonDefaultActionButtons];
      }
    }
  }
}

- (void)setBackgroundMaterialRecipe:(int64_t)recipe
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_backgroundMaterialRecipe != recipe)
  {
    self->_backgroundMaterialRecipe = recipe;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    arrangedSubviews = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v6 = [arrangedSubviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v10 + 1) + 8 * v9++) setBackgroundMaterialRecipe:recipe];
        }

        while (v7 != v9);
        v7 = [arrangedSubviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(PLPlatterActionButtonsView *)self setNeedsLayout];
  }
}

- (void)setBackgroundTintColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_backgroundTintColor, color);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    arrangedSubviews = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v11 + 1) + 8 * v10++) setBackgroundTintColor:colorCopy];
        }

        while (v8 != v10);
        v8 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PLPlatterActionButtonsView *)self setNeedsLayout];
  }
}

- (void)setTextColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, color);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    arrangedSubviews = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v11 + 1) + 8 * v10++) setTextColor:colorCopy];
        }

        while (v8 != v10);
        v8 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PLPlatterActionButtonsView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  [(PLPlatterActionButtonsView *)self _layoutClippingView];
  [(UIView *)self->_clippingView frame];
  Width = CGRectGetWidth(v8);
  v6 = height;
  result.height = v6;
  result.width = Width;
  return result;
}

- (void)setCustomBackgroundColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v5 = colorCopy;
  if (self->_customBackgroundColor != colorCopy)
  {
    self->_customBackgroundColor = colorCopy;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    arrangedSubviews = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v11 + 1) + 8 * v10++) setCustomBackgroundColor:v5];
        }

        while (v8 != v10);
        v8 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PLPlatterActionButtonsView *)self setNeedsLayout];
  }
}

- (unint64_t)_widthMultipleForVerticallyStackedButtonsWithCount:(unint64_t)count
{
  if (count == 1)
  {
    return 2;
  }

  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_layoutClippingView
{
  [(PLPlatterActionButtonsView *)self defaultWidth];
  [(PLPlatterActionButtonsView *)self stretchedWidth];
  [(PLPlatterActionButtonsView *)self bounds];
  CGRectGetHeight(v5);
  clippingView = self->_clippingView;
  PLMainScreenScale();
  UIRectIntegralWithScale();

  [(UIView *)clippingView setFrame:?];
}

- (void)_layoutButtonsStackView
{
  buttonsStackView = self->_buttonsStackView;
  [(PLPlatterActionButtonsView *)self bounds];

  [(UIStackView *)buttonsStackView setFrame:?];
}

- (void)_hideNonDefaultActionButtons
{
  buttonsStackView = [(PLPlatterActionButtonsView *)self buttonsStackView];
  arrangedSubviews = [buttonsStackView arrangedSubviews];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PLPlatterActionButtonsView__hideNonDefaultActionButtons__block_invoke;
  v5[3] = &unk_278425308;
  v5[4] = self;
  [arrangedSubviews enumerateObjectsUsingBlock:v5];
}

void __58__PLPlatterActionButtonsView__hideNonDefaultActionButtons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) defaultActionButton];

  if (v4 != v3)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__PLPlatterActionButtonsView__hideNonDefaultActionButtons__block_invoke_2;
    v6[3] = &unk_2784250D8;
    v7 = v3;
    [v5 _performNonDefaultActionButtonsHideRevealAnimation:v6];
  }
}

- (void)_revealNonDefaultActionButtons
{
  buttonsStackView = [(PLPlatterActionButtonsView *)self buttonsStackView];
  arrangedSubviews = [buttonsStackView arrangedSubviews];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__PLPlatterActionButtonsView__revealNonDefaultActionButtons__block_invoke;
  v5[3] = &unk_278425308;
  v5[4] = self;
  [arrangedSubviews enumerateObjectsUsingBlock:v5];
}

void __60__PLPlatterActionButtonsView__revealNonDefaultActionButtons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) defaultActionButton];

  if (v4 != v3)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__PLPlatterActionButtonsView__revealNonDefaultActionButtons__block_invoke_2;
    v6[3] = &unk_2784250D8;
    v7 = v3;
    [v5 _performNonDefaultActionButtonsHideRevealAnimation:v6];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    v10 = v3;
    v11 = v4;
    self->_adjustsFontForContentSizeCategory = category;
    buttonsStackView = [(PLPlatterActionButtonsView *)self buttonsStackView];
    arrangedSubviews = [buttonsStackView arrangedSubviews];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__PLPlatterActionButtonsView_setAdjustsFontForContentSizeCategory___block_invoke;
    v8[3] = &__block_descriptor_33_e55_v32__0__UIView_PLContentSizeCategoryAdjusting__8Q16_B24l;
    categoryCopy = category;
    [arrangedSubviews enumerateObjectsUsingBlock:v8];
  }
}

void __67__PLPlatterActionButtonsView_setAdjustsFontForContentSizeCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setAdjustsFontForContentSizeCategory:*(a1 + 32)];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  buttonsStackView = [(PLPlatterActionButtonsView *)self buttonsStackView];
  arrangedSubviews = [buttonsStackView arrangedSubviews];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PLPlatterActionButtonsView_adjustForContentSizeCategoryChange__block_invoke;
  v7[3] = &unk_278425350;
  v7[4] = &v8;
  [arrangedSubviews enumerateObjectsUsingBlock:v7];

  if (*(v9 + 24) == 1)
  {
    [(PLPlatterActionButtonsView *)self setNeedsLayout];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

uint64_t __64__PLPlatterActionButtonsView_adjustForContentSizeCategoryChange__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = v8;
  if (v3)
  {
    v3 = [v8 adjustForContentSizeCategoryChange];
    v5 = *(*(a1 + 32) + 8);
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v5 + 24);
    }

    *(v5 + 24) = v6 & 1;
    v4 = v8;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)setMaterialGroupNameBase:(id)base
{
  v16 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  if (![(NSString *)self->_materialGroupNameBase isEqualToString:baseCopy])
  {
    objc_storeStrong(&self->_materialGroupNameBase, base);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    arrangedSubviews = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v7 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v11 + 1) + 8 * v10++) setMaterialGroupNameBase:baseCopy];
        }

        while (v8 != v10);
        v8 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(PLPlatterActionButtonsView *)self setNeedsLayout];
}

@end