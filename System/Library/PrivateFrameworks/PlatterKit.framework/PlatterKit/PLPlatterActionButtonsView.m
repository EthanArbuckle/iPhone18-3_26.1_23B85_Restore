@interface PLPlatterActionButtonsView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PLPlatterActionButtonsView)initWithFrame:(CGRect)a3 actions:(id)a4 cornerRadius:(double)a5 shouldVerticallyStack:(BOOL)a6 shouldGetGlassBackground:(BOOL)a7 glassState:(unint64_t)a8 glassSmoothness:(double)a9 glassId:(int64_t)a10 glassLuminance:(double)a11;
- (id)senderForActionWithIdentifier:(id)a3;
- (unint64_t)_widthMultipleForVerticallyStackedButtonsWithCount:(unint64_t)a3;
- (unint64_t)actionButtonCount;
- (void)_hideNonDefaultActionButtons;
- (void)_layoutButtonsStackView;
- (void)_layoutClippingView;
- (void)_revealNonDefaultActionButtons;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setBackgroundMaterialRecipe:(int64_t)a3;
- (void)setBackgroundTintColor:(id)a3;
- (void)setCustomBackgroundColor:(id)a3;
- (void)setHighlightDefaultActionButton:(BOOL)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setTextColor:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PLPlatterActionButtonsView

- (PLPlatterActionButtonsView)initWithFrame:(CGRect)a3 actions:(id)a4 cornerRadius:(double)a5 shouldVerticallyStack:(BOOL)a6 shouldGetGlassBackground:(BOOL)a7 glassState:(unint64_t)a8 glassSmoothness:(double)a9 glassId:(int64_t)a10 glassLuminance:(double)a11
{
  v11 = a7;
  v12 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v85 = *MEMORY[0x277D85DE8];
  v21 = a4;
  v82.receiver = self;
  v82.super_class = PLPlatterActionButtonsView;
  v22 = [(PLPlatterActionButtonsView *)&v82 initWithFrame:x, y, width, height];
  v23 = v22;
  if (v22)
  {
    v22->_verticallyStacked = v12;
    v22->_hasGlassBackground = v11;
    v22->_backgroundMaterialRecipe = 1;
    materialGroupNameBase = v22->_materialGroupNameBase;
    v22->_materialGroupNameBase = @"PLPlatterActionButtonsView";

    v23->_adjustsFontForContentSizeCategory = 1;
    v23->_glassLuminance = a11;
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
    [(UIStackView *)v23->_buttonsStackView setAxis:v12];
    [(UIStackView *)v23->_buttonsStackView setDistribution:1];
    [(UIStackView *)v23->_buttonsStackView setSpacing:8.0];
    [(UIView *)v23->_clippingView addSubview:v23->_buttonsStackView];
    v64 = [v21 count];
    [(PLPlatterActionButtonsView *)v23 _maxAllowedButtonWidth];
    v38 = v37;
    v39 = 1.0;
    v65 = v12;
    if (v12)
    {
      v39 = -[PLPlatterActionButtonsView _widthMultipleForVerticallyStackedButtonsWithCount:](v23, "_widthMultipleForVerticallyStackedButtonsWithCount:", [v21 count]);
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
    v66 = v21;
    recta = v21;
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
          [(PLPlatterActionButton *)v47 setIsBackgroundGlass:v11];
          [(PLPlatterActionButton *)v47 setCornerRadius:a5];
          if (v11)
          {
            v48 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:1 size:1 smoothness:a8 == 1 subdued:a9];
            v49 = v48;
            if (a8 - 1 <= 1)
            {
              [v48 setSubvariant:@"lockscreenNotifications"];
              [v49 setAdaptiveFixedLuminance:a11];
            }

            [v49 setBackdropGroupName:@"lockscreenElements"];
            [v49 setIdentifier:a10];
            [(PLPlatterActionButton *)v47 _setBackground:v49];
          }

          else
          {
            [(PLPlatterActionButton *)v47 setBackgroundMaterialRecipe:v23->_backgroundMaterialRecipe];
            [(PLPlatterActionButton *)v47 setMaterialGroupNameBase:v23->_materialGroupNameBase];
          }

          [(PLPlatterActionButton *)v47 addAction:v46 forControlEvents:64];
          v50 = [v46 title];
          [(PLPlatterActionButton *)v47 setTitle:v50];

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

    v51 = [(UIStackView *)v23->_buttonsStackView arrangedSubviews];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __162__PLPlatterActionButtonsView_initWithFrame_actions_cornerRadius_shouldVerticallyStack_shouldGetGlassBackground_glassState_glassSmoothness_glassId_glassLuminance___block_invoke;
    v75[3] = &unk_278425290;
    v52 = v23;
    v76 = v52;
    v53 = v51;
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
      v21 = v66;
    }

    else
    {
      v21 = v66;
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

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = PLPlatterActionButtonsView;
  v3 = a3;
  [(PLPlatterActionButtonsView *)&v5 willMoveToSuperview:v3];
  v4 = [v3 layer];

  [v4 setAllowsGroupBlending:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLPlatterActionButtonsView;
  [(PLPlatterActionButtonsView *)&v3 layoutSubviews];
  [(PLPlatterActionButtonsView *)self _layoutButtonsStackView];
  [(PLPlatterActionButtonsView *)self _layoutClippingView];
}

- (id)senderForActionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__PLPlatterActionButtonsView_senderForActionWithIdentifier___block_invoke;
  v9[3] = &unk_2784252E0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

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
  v2 = [(PLPlatterActionButtonsView *)self buttonsStackView];
  v3 = [v2 arrangedSubviews];
  v4 = [v3 count];

  return v4;
}

- (void)setHighlightDefaultActionButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLPlatterActionButtonsView *)self defaultActionButton];
  if (v5)
  {
    highlightDefaultActionButton = self->_highlightDefaultActionButton;

    if (highlightDefaultActionButton != v3)
    {
      self->_highlightDefaultActionButton = v3;
      v7 = [(PLPlatterActionButtonsView *)self defaultActionButton];
      [v7 setHighlighted:v3];

      if (v3)
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

- (void)setBackgroundMaterialRecipe:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_backgroundMaterialRecipe != a3)
  {
    self->_backgroundMaterialRecipe = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setBackgroundMaterialRecipe:a3];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(PLPlatterActionButtonsView *)self setNeedsLayout];
  }
}

- (void)setBackgroundTintColor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_backgroundTintColor, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setBackgroundTintColor:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PLPlatterActionButtonsView *)self setNeedsLayout];
  }
}

- (void)setTextColor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setTextColor:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PLPlatterActionButtonsView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  [(PLPlatterActionButtonsView *)self _layoutClippingView];
  [(UIView *)self->_clippingView frame];
  Width = CGRectGetWidth(v8);
  v6 = height;
  result.height = v6;
  result.width = Width;
  return result;
}

- (void)setCustomBackgroundColor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_customBackgroundColor != v4)
  {
    self->_customBackgroundColor = v4;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setCustomBackgroundColor:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(PLPlatterActionButtonsView *)self setNeedsLayout];
  }
}

- (unint64_t)_widthMultipleForVerticallyStackedButtonsWithCount:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 2;
  }

  v4 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
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
  v3 = [(PLPlatterActionButtonsView *)self buttonsStackView];
  v4 = [v3 arrangedSubviews];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PLPlatterActionButtonsView__hideNonDefaultActionButtons__block_invoke;
  v5[3] = &unk_278425308;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
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
  v3 = [(PLPlatterActionButtonsView *)self buttonsStackView];
  v4 = [v3 arrangedSubviews];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__PLPlatterActionButtonsView__revealNonDefaultActionButtons__block_invoke;
  v5[3] = &unk_278425308;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
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

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_adjustsFontForContentSizeCategory = a3;
    v6 = [(PLPlatterActionButtonsView *)self buttonsStackView];
    v7 = [v6 arrangedSubviews];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__PLPlatterActionButtonsView_setAdjustsFontForContentSizeCategory___block_invoke;
    v8[3] = &__block_descriptor_33_e55_v32__0__UIView_PLContentSizeCategoryAdjusting__8Q16_B24l;
    v9 = a3;
    [v7 enumerateObjectsUsingBlock:v8];
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
  v3 = [(PLPlatterActionButtonsView *)self buttonsStackView];
  v4 = [v3 arrangedSubviews];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PLPlatterActionButtonsView_adjustForContentSizeCategoryChange__block_invoke;
  v7[3] = &unk_278425350;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

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

- (void)setMaterialGroupNameBase:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSString *)self->_materialGroupNameBase isEqualToString:v5])
  {
    objc_storeStrong(&self->_materialGroupNameBase, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(UIStackView *)self->_buttonsStackView arrangedSubviews];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setMaterialGroupNameBase:v5];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(PLPlatterActionButtonsView *)self setNeedsLayout];
}

@end