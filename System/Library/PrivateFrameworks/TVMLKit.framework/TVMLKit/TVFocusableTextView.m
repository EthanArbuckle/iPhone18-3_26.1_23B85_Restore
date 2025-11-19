@interface TVFocusableTextView
- (BOOL)canBecomeFocused;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)_moreLabelExclusionPathFrame;
- (CGRect)_moreLabelFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TVFocusableTextView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)padding;
- (unint64_t)maximumNumberOfLines;
- (void)_playButtonAction:(id)a3;
- (void)_recomputeTextSizeIfNeeded;
- (void)_selectButtonAction:(id)a3;
- (void)_updateBackgroundColors;
- (void)_updateTextColorsForFocusState:(BOOL)a3;
- (void)_updateTextColorsIfNeeded;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)floatingContentView:(id)a3 isTransitioningFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)setAlwaysShowBackground:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setDescriptionText:(id)a3;
- (void)setDescriptionTextAlignment:(int64_t)a3;
- (void)setDescriptionTextColor:(id)a3;
- (void)setDescriptionTextHighlightColor:(id)a3;
- (void)setFocusSizeIncrease:(unint64_t)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightBackgroundColor:(id)a3;
- (void)setMaximumNumberOfLines:(unint64_t)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)setTrackHorizontal:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation TVFocusableTextView

- (TVFocusableTextView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v48.receiver = self;
  v48.super_class = TVFocusableTextView;
  v7 = [(TVFocusableTextView *)&v48 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_disableFocus = 0;
    v7->_alwaysShowBackground = 0;
    v7->_moreHighlightPadding = 14.0;
    v7->_moreHorizontalMargin = 6.0;
    v9 = *(MEMORY[0x277D768C8] + 16);
    *&v7->_padding.top = *MEMORY[0x277D768C8];
    *&v7->_padding.bottom = v9;
    v10 = [MEMORY[0x277D75348] clearColor];
    v47.receiver = v8;
    v47.super_class = TVFocusableTextView;
    [(TVFocusableTextView *)&v47 setBackgroundColor:v10];

    v11 = [objc_alloc(MEMORY[0x277D75F68]) initWithFrame:{x, y, width, height}];
    floatingView = v8->_floatingView;
    v8->_floatingView = v11;

    [(_UIFloatingContentView *)v8->_floatingView setBackgroundColor:0 forState:0];
    [(_UIFloatingContentView *)v8->_floatingView setBackgroundColor:0 forState:8];
    [(_UIFloatingContentView *)v8->_floatingView setBackgroundColor:0 forState:1];
    [(_UIFloatingContentView *)v8->_floatingView setBackgroundColor:0 forState:4];
    [(_UIFloatingContentView *)v8->_floatingView setFloatingContentDelegate:v8];
    [(_UIFloatingContentView *)v8->_floatingView setContentMotionRotation:0.0 translation:0.04, 0.0, 4.0];
    [(_UIFloatingContentView *)v8->_floatingView setFocusedSizeIncrease:20.0];
    v13 = v8->_floatingView;
    [objc_opt_class() cornerRadius];
    [(_UIFloatingContentView *)v13 setCornerRadius:?];
    [(TVFocusableTextView *)v8 addSubview:v8->_floatingView];
    v14 = __37__TVFocusableTextView_initWithFrame___block_invoke();
    auxilliaryTextView = v8->_auxilliaryTextView;
    v8->_auxilliaryTextView = v14;

    v8->_descriptionTextAlignment = 4;
    v16 = __37__TVFocusableTextView_initWithFrame___block_invoke();
    descriptionTextView = v8->_descriptionTextView;
    v8->_descriptionTextView = v16;

    v18 = [(_UIFloatingContentView *)v8->_floatingView contentView];
    [v18 addSubview:v8->_descriptionTextView];

    v19 = objc_alloc(MEMORY[0x277D756B8]);
    v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    moreLabel = v8->_moreLabel;
    v8->_moreLabel = v20;

    v22 = v8->_moreLabel;
    v23 = _TVMLLocString(@"TVDescriptionMore", @"Localizable");
    v24 = [v23 localizedUppercaseString];
    [(UILabel *)v22 setText:v24];

    v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
    v26 = [v25 fontDescriptor];
    v27 = [v26 fontAttributes];
    v28 = [v27 mutableCopy];

    v29 = *MEMORY[0x277D74380];
    v30 = [v28 objectForKey:*MEMORY[0x277D74380]];
    v31 = [v30 mutableCopy];

    if (!v31)
    {
      v31 = [MEMORY[0x277CBEB38] dictionary];
    }

    v32 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
    [v31 setObject:v32 forKey:*MEMORY[0x277D74430]];

    [v28 setObject:v31 forKey:v29];
    v33 = [objc_alloc(MEMORY[0x277D74310]) initWithFontAttributes:v28];
    v34 = MEMORY[0x277D74300];
    [v25 pointSize];
    v35 = [v34 fontWithDescriptor:v33 size:?];
    [(UILabel *)v8->_moreLabel setFont:v35];
    [(UILabel *)v8->_moreLabel _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
    v36 = v8->_moreLabel;
    v37 = _TVMLLocString(@"TVDescriptionMore", @"Localizable");
    [(UILabel *)v36 setText:v37];

    v38 = v8->_moreLabel;
    v39 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277CC4A88]];
    [(UILabel *)v38 setFont:v39];

    [(UILabel *)v8->_moreLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v8->_moreLabel sizeToFit];
    v40 = [(_UIFloatingContentView *)v8->_floatingView contentView];
    [v40 addSubview:v8->_moreLabel];

    v41 = v8->_moreLabel;
    [(TVFocusableTextView *)v8 _moreLabelFrame];
    [(UILabel *)v41 setFrame:?];
    v42 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__selectButtonAction_];
    moreLabelTapGestureRecognizer = v8->_moreLabelTapGestureRecognizer;
    v8->_moreLabelTapGestureRecognizer = v42;

    [(UILabel *)v8->_moreLabel addGestureRecognizer:v8->_moreLabelTapGestureRecognizer];
    [(UILabel *)v8->_moreLabel setUserInteractionEnabled:1];
    v44 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__playButtonAction_];
    playRecognizer = v8->_playRecognizer;
    v8->_playRecognizer = v44;

    [(UITapGestureRecognizer *)v8->_playRecognizer setAllowedPressTypes:&unk_287E486A8];
    [(UITapGestureRecognizer *)v8->_playRecognizer setDelegate:v8];
    [(TVFocusableTextView *)v8 addGestureRecognizer:v8->_playRecognizer];
  }

  return v8;
}

id __37__TVFocusableTextView_initWithFrame___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D75C40]);
  v1 = [v0 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v1 setBackgroundColor:0];
  [v1 setTextContainerInset:{0.0, -5.0, 0.0, -5.0}];
  [v1 setScrollEnabled:0];
  [v1 setEditable:0];
  [v1 setUserInteractionEnabled:0];
  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setSelectable:0];
  v2 = [v1 layer];
  [v2 setCornerRadius:0.0];

  v3 = [v1 textContainer];
  [v3 setMaximumNumberOfLines:0];

  v4 = [v1 textContainer];
  [v4 setLineBreakMode:4];

  return v1;
}

- (void)setDescriptionTextColor:(id)a3
{
  v5 = a3;
  if (self->_descriptionTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_descriptionTextColor, a3);
    [(TVFocusableTextView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setDescriptionTextHighlightColor:(id)a3
{
  v5 = a3;
  if (self->_descriptionTextHighlightColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_descriptionTextHighlightColor, a3);
    [(TVFocusableTextView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setDescriptionTextAlignment:(int64_t)a3
{
  if (self->_descriptionTextAlignment != a3)
  {
    self->_descriptionTextAlignment = a3;
    [(TVFocusableTextView *)self setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_backgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backgroundColor, a3);
    [(TVFocusableTextView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setHighlightBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_highlightBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_highlightBackgroundColor, a3);
    [(TVFocusableTextView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setFocusSizeIncrease:(unint64_t)a3
{
  if (self->_focusSizeIncrease != a3)
  {
    self->_focusSizeIncrease = a3;
    [(_UIFloatingContentView *)self->_floatingView setFocusedSizeIncrease:a3];
  }
}

- (void)setPadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_padding.top, v3), vceqq_f64(*&self->_padding.bottom, v4)))) & 1) == 0)
  {
    self->_padding = a3;
    [(UITextView *)self->_descriptionTextView setTextContainerInset:?];

    [(TVFocusableTextView *)self setNeedsLayout];
  }
}

- (void)setAlwaysShowBackground:(BOOL)a3
{
  if (self->_alwaysShowBackground != a3)
  {
    self->_alwaysShowBackground = a3;
    [(TVFocusableTextView *)self setNeedsLayout];
  }
}

- (void)_updateBackgroundColors
{
  p_backgroundColor = &self->_backgroundColor;
  backgroundColor = self->_backgroundColor;
  if (self->_alwaysShowBackground)
  {
    v5 = backgroundColor;
    backgroundColor = self->_highlightBackgroundColor;
    if (backgroundColor)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (backgroundColor)
    {
      goto LABEL_7;
    }

    p_backgroundColor = &self->_highlightBackgroundColor;
  }

  backgroundColor = *p_backgroundColor;
LABEL_7:
  v9 = backgroundColor;
  [(_UIFloatingContentView *)self->_floatingView setBackgroundColor:v5 forState:0];
  [(_UIFloatingContentView *)self->_floatingView setBackgroundColor:v9 forState:8];
  [(_UIFloatingContentView *)self->_floatingView setBackgroundColor:v9 forState:1];
  backgroundView = self->_backgroundView;
  if (self->_highlightBackgroundColor)
  {
    [(UIVisualEffectView *)self->_backgroundView removeFromSuperview];
  }

  else
  {
    v7 = 1.0;
    if (!self->_alwaysShowBackground)
    {
      [(UIVisualEffectView *)self->_backgroundView alpha];
    }

    [(UIVisualEffectView *)backgroundView setAlpha:v7];
    v8 = [(_UIFloatingContentView *)self->_floatingView visualEffectContainerView];
    [v8 addSubview:self->_backgroundView];
  }
}

- (void)_updateTextColorsIfNeeded
{
  v3 = ([(_UIFloatingContentView *)self->_floatingView controlState]>> 3) & 1;

  [(TVFocusableTextView *)self _updateTextColorsForFocusState:v3];
}

- (void)_updateTextColorsForFocusState:(BOOL)a3
{
  if (self->_descriptionTextColor && self->_descriptionTextHighlightColor)
  {
    if (a3)
    {
      descriptionTextHighlightColor = self->_descriptionTextHighlightColor;
    }

    else
    {
      descriptionTextHighlightColor = self->_descriptionTextColor;
    }

    v5 = [(TVFocusableTextView *)self _accessibilityHigherContrastTintColorForColor:descriptionTextHighlightColor];
    [(UITextView *)self->_descriptionTextView setTextColor:v5];
  }

  if (self->_moreLabelTextColor)
  {
    moreLabel = self->_moreLabel;

    [(UILabel *)moreLabel setTextColor:?];
  }

  else
  {
    v7 = [(TVFocusableTextView *)self descriptionText];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [(TVFocusableTextView *)self descriptionText];
      v10 = [v9 attributesAtIndex:0 effectiveRange:0];
      v15 = [v10 mutableCopy];

      v11 = [v15 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
      v12 = v11;
      if (v11)
      {
        v13 = self->_moreLabel;
        v14 = [v11 colorWithAlphaComponent:0.5];
        [(UILabel *)v13 setTextColor:v14];
      }
    }
  }
}

- (void)layoutSubviews
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TVFocusableTextView;
  [(TVFocusableTextView *)&v21 layoutSubviews];
  [(TVFocusableTextView *)self bounds];
  if (v3 == 0.0 || (v5 = v4, v4 == 0.0))
  {
    v14 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
    [(UITextView *)self->_descriptionTextView setFrame:*MEMORY[0x277CBF3A0], v15, v16, v17];
    [(_UIFloatingContentView *)self->_floatingView setFrame:v14, v15, v16, v17];
    [(UIVisualEffectView *)self->_backgroundView setFrame:v14, v15, v16, v17];
    [(UILabel *)self->_moreLabel setFrame:v14, v15, v16, v17];
  }

  else
  {
    v6 = v3;
    moreHighlightPadding = self->_moreHighlightPadding;
    [(UITextView *)self->_descriptionTextView setFrame:moreHighlightPadding, moreHighlightPadding + -6.0];
    v8 = -self->_moreHighlightPadding;
    v23.origin.x = moreHighlightPadding;
    v23.origin.y = moreHighlightPadding + -6.0;
    v23.size.width = v6;
    v23.size.height = v5;
    v9 = CGRectGetWidth(v23) + self->_moreHighlightPadding * 2.0;
    v24.origin.x = moreHighlightPadding;
    v24.origin.y = moreHighlightPadding + -6.0;
    v24.size.width = v6;
    v24.size.height = v5;
    v10 = moreHighlightPadding + -6.0 + moreHighlightPadding + -3.0 + CGRectGetHeight(v24);
    [(_UIFloatingContentView *)self->_floatingView setFrame:v8, -(moreHighlightPadding + -6.0), v9, v10];
    [(UIVisualEffectView *)self->_backgroundView setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v9, v10];
    [(UITextView *)self->_descriptionTextView setTextAlignment:self->_descriptionTextAlignment];
    v11 = [(_UIFloatingContentView *)self->_floatingView contentView];
    [v11 addSubview:self->_moreLabel];

    moreLabel = self->_moreLabel;
    [(TVFocusableTextView *)self _moreLabelFrame];
    [(UILabel *)moreLabel setFrame:?];
    [(TVFocusableTextView *)self _recomputeTextSizeIfNeeded];
    if (self->_textTruncating && !self->_disableFocus)
    {
      [(UILabel *)self->_moreLabel setHidden:0];
      [(TVFocusableTextView *)self _moreLabelExclusionPathFrame];
      v18 = MEMORY[0x277D75208];
      v26 = CGRectIntegral(v25);
      v13 = [v18 bezierPathWithRect:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];
      v19 = [(UITextView *)self->_descriptionTextView textContainer];
      v22[0] = v13;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      [v19 setExclusionPaths:v20];
    }

    else
    {
      [(UILabel *)self->_moreLabel setHidden:1];
      v13 = [(UITextView *)self->_descriptionTextView textContainer];
      [v13 setExclusionPaths:MEMORY[0x277CBEBF8]];
    }

    [(TVFocusableTextView *)self _updateTextColorsIfNeeded];
    [(TVFocusableTextView *)self _updateBackgroundColors];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  if (a5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__TVFocusableTextView_setSelected_animated_withAnimationCoordinator___block_invoke;
    v6[3] = &unk_279D6E9A0;
    v6[4] = self;
    v7 = a3;
    v8 = a4;
    [a5 addCoordinatedAnimations:v6 completion:0];
  }

  else
  {

    [(TVFocusableTextView *)self setSelected:a3 animated:a4];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedView];
  v6 = [v5 isDescendantOfView:self];

  [(TVFocusableTextView *)self _updateTextColorsForFocusState:v6];
}

- (BOOL)canBecomeFocused
{
  if ([(TVFocusableTextView *)self disableFocus])
  {
    return 0;
  }

  v3 = [(UITextView *)self->_descriptionTextView attributedText];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  if ([(TVFocusableTextView *)self isAlwaysFocusable])
  {
    return 1;
  }

  return [(TVFocusableTextView *)self isTextTruncating];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TVFocusableTextView *)self maximumNumberOfLines];
  v7 = [(UITextView *)self->_auxilliaryTextView textContainer];
  [v7 setMaximumNumberOfLines:v6];

  [(UITextView *)self->_auxilliaryTextView sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  if (v6)
  {
    if (self->_moreLabelOnNewLine)
    {
      v12 = [(UITextView *)self->_auxilliaryTextView textContainer];
      [v12 setMaximumNumberOfLines:0];

      [(UITextView *)self->_auxilliaryTextView sizeThatFits:width, height];
      if (v13 > v11)
      {
        [(UILabel *)self->_moreLabel sizeThatFits:width, height];
        v11 = v11 + v14;
      }
    }
  }

  if (width == 0.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = width;
  }

  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(TVFocusableTextView *)self bounds];
  Width = CGRectGetWidth(v8);

  [(TVFocusableTextView *)self sizeThatFits:Width, 0.0];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TVFocusableTextView *)self _setNeedsTextSizeComputation];
  v8.receiver = self;
  v8.super_class = TVFocusableTextView;
  [(TVFocusableTextView *)&v8 setFrame:x, y, width, height];
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
    v7 = *MEMORY[0x277D74118];
    v8 = [v5 length];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__TVFocusableTextView_setDescriptionText___block_invoke;
    v23[3] = &unk_279D6E9C8;
    v9 = v6;
    v24 = v9;
    [v5 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v23}];
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      objc_initWeak(&location, self);
      v10 = [v5 length];
      v11 = *MEMORY[0x277D740C0];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __42__TVFocusableTextView_setDescriptionText___block_invoke_2;
      v19 = &unk_279D6E9F0;
      objc_copyWeak(&v21, &location);
      v20 = v9;
      [v5 enumerateAttribute:v11 inRange:0 options:v10 usingBlock:{0, &v16}];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    [v9 tv_addLanguageAwareness:{0, v16, v17, v18, v19}];
    descriptionTextView = self->_descriptionTextView;
    v13 = [v9 copy];
    [(UITextView *)descriptionTextView setAttributedText:v13];

    auxilliaryTextView = self->_auxilliaryTextView;
    v15 = [v9 copy];
    [(UITextView *)auxilliaryTextView setAttributedText:v15];

    [(TVFocusableTextView *)self _setNeedsTextSizeComputation];
    [(TVFocusableTextView *)self setNeedsLayout];
  }
}

uint64_t __42__TVFocusableTextView_setDescriptionText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v17;
  if (isKindOfClass)
  {
    v9 = [v17 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277D74240]);
    }

    v12 = v11;

    [v12 setLineBreakMode:0];
    [v12 setAlignment:4];
    v13 = *MEMORY[0x277D74118];
    [*(a1 + 32) removeAttribute:*MEMORY[0x277D74118] range:{a3, a4}];
    v14 = *(a1 + 32);
    v15 = [v12 copy];
    [v14 addAttribute:v13 value:v15 range:{a3, a4}];

    v8 = v17;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v8);
}

void __42__TVFocusableTextView_setDescriptionText___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _accessibilityHigherContrastTintColorForColor:v7];

    v10 = *MEMORY[0x277D740C0];
    [*(a1 + 32) removeAttribute:*MEMORY[0x277D740C0] range:{a3, a4}];
    [*(a1 + 32) addAttribute:v10 value:v9 range:{a3, a4}];
  }
}

- (void)setMaximumNumberOfLines:(unint64_t)a3
{
  v5 = [(UITextView *)self->_descriptionTextView textContainer];
  [v5 setMaximumNumberOfLines:a3];

  [(TVFocusableTextView *)self _setNeedsTextSizeComputation];

  [(TVFocusableTextView *)self setNeedsLayout];
}

- (unint64_t)maximumNumberOfLines
{
  v2 = [(UITextView *)self->_descriptionTextView textContainer];
  v3 = [v2 maximumNumberOfLines];

  return v3;
}

- (void)setTrackHorizontal:(BOOL)a3
{
  self->_trackHorizontal = a3;
  floatingView = self->_floatingView;
  if (a3)
  {
    v4 = 0.04;
    v5 = 4.0;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  [(_UIFloatingContentView *)floatingView setContentMotionRotation:v4 translation:0.04, v5, 4.0];
}

- (void)_recomputeTextSizeIfNeeded
{
  if (self->_needsTextSizeComputation)
  {
    self->_needsTextSizeComputation = 0;
    [(UITextView *)self->_descriptionTextView bounds];
    v5 = v4;
    v6 = [(UITextView *)self->_auxilliaryTextView textContainer];
    [v6 setMaximumNumberOfLines:{-[TVFocusableTextView maximumNumberOfLines](self, "maximumNumberOfLines")}];

    [(UITextView *)self->_auxilliaryTextView sizeThatFits:v5, 0.0];
    v8 = v7;
    v9 = [(UITextView *)self->_auxilliaryTextView textContainer];
    [v9 setMaximumNumberOfLines:0];

    [(UITextView *)self->_auxilliaryTextView sizeThatFits:v5, 0.0];
    self->_textTruncating = v10 > v8;

    [(TVFocusableTextView *)self setNeedsFocusUpdate];
  }
}

- (CGRect)_moreLabelExclusionPathFrame
{
  [(UITextView *)self->_descriptionTextView textContainerInset];
  v4 = v3;
  v6 = v5;
  [(TVFocusableTextView *)self _moreLabelFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(TVFocusableTextView *)self moreHorizontalMargin];
  v16 = v15;
  if (self->_moreLabelOnNewLine)
  {
    [(UITextView *)self->_descriptionTextView frame];
    v12 = v17 - v4 - v6;
  }

  v18 = v8 - v16;
  v19 = v16 + v12;
  v20 = v10;
  v21 = v14;
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v20;
  result.origin.x = v18;
  return result;
}

- (CGRect)_moreLabelFrame
{
  v3 = [(UITextView *)self->_descriptionTextView text];
  v4 = [v3 _isNaturallyRTL];

  [(_UIFloatingContentView *)self->_floatingView bounds];
  v6 = v5;
  rect = v7;
  v9 = v8;
  v11 = v10;
  [(UITextView *)self->_descriptionTextView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v55 = v18;
  [(UILabel *)self->_moreLabel sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v20 = v19;
  v22 = v21;
  if (self->_moreLabelOnNewLine)
  {
    if (v4)
    {
      v57.origin.x = v6;
      v57.origin.y = rect;
      v57.size.width = v9;
      v57.size.height = v11;
      MaxX = CGRectGetMaxX(v57);
      v58.origin.x = 0.0;
      v58.origin.y = 0.0;
      v58.size.width = v20;
      v58.size.height = v22;
      moreHighlightPadding = MaxX - CGRectGetWidth(v58) - self->_moreHighlightPadding;
    }

    else
    {
      moreHighlightPadding = self->_moreHighlightPadding;
    }
  }

  else
  {
    moreHighlightPadding = 4.0;
    if ((v4 & 1) == 0)
    {
      v59.origin.x = v13;
      v59.origin.y = v15;
      v59.size.width = v17;
      v59.size.height = v55;
      v25 = CGRectGetMaxX(v59);
      v60.origin.x = 0.0;
      v60.origin.y = 0.0;
      v60.size.width = v20;
      v60.size.height = v22;
      moreHighlightPadding = v25 - CGRectGetWidth(v60) + -4.0;
    }

    v61.origin.y = 0.0;
    v61.origin.x = moreHighlightPadding;
    v61.size.width = v20;
    v61.size.height = v22;
    Width = CGRectGetWidth(v61);
    v20 = v20 + 4.0;
    if (v4)
    {
      v27 = Width;
      v62.origin.y = 0.0;
      v62.origin.x = moreHighlightPadding;
      v62.size.width = v20;
      v62.size.height = v22;
      moreHighlightPadding = moreHighlightPadding + v27 - CGRectGetWidth(v62);
    }
  }

  v28 = [(UITextView *)self->_descriptionTextView attributedText];
  v63.origin.x = v13;
  v63.origin.y = v15;
  v63.size.width = v17;
  v63.size.height = v55;
  MaxY = CGRectGetMaxY(v63);
  if ([v28 length])
  {
    v56[0] = 0;
    v56[1] = [v28 length];
    v30 = [v28 attributesAtIndex:0 effectiveRange:v56];
    v31 = [v30 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    [v31 descender];
    v33 = v32;
    [v31 leading];
    v34 = v20;
    v36 = v33 - v35 * 0.5;
    v37 = [(UILabel *)self->_moreLabel font];
    [v37 descender];
    v39 = v38;
    v40 = [(UILabel *)self->_moreLabel font];
    [v40 leading];
    v42 = v36 - (v39 - v41 * 0.5);
    v20 = v34;
    MaxY = MaxY + v42;
  }

  v64.origin.y = 0.0;
  v64.origin.x = moreHighlightPadding;
  v64.size.width = v20;
  v64.size.height = v22;
  Height = CGRectGetHeight(v64);
  if (v4)
  {
    if (self->_moreLabelOnNewLine)
    {
      left = -self->_padding.right;
    }

    else
    {
      left = self->_padding.left;
    }

    v46 = moreHighlightPadding + left;
  }

  else
  {
    if (self->_moreLabelOnNewLine)
    {
      right = -self->_padding.left;
    }

    else
    {
      right = self->_padding.right;
    }

    v46 = moreHighlightPadding - right;
  }

  v47 = MaxY - Height;
  v48 = floorf(v47);
  if (self->_moreLabelOnNewLine)
  {
    v48 = v48 + -3.0;
  }

  v49 = v48 - self->_padding.bottom;

  v50 = v46;
  v51 = v49;
  v52 = v20;
  v53 = v22;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  v9 = [v8 type];

  if ((v9 & 0xFFFFFFFFFFFFFFFDLL) == 4 && [(TVFocusableTextView *)self isFocused])
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:9 animated:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TVFocusableTextView;
    [(TVFocusableTextView *)&v10 pressesBegan:v6 withEvent:v7];
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = TVFocusableTextView;
  [(TVFocusableTextView *)&v4 tintColorDidChange];
  if ([(TVFocusableTextView *)self tintAdjustmentMode]== 2)
  {
    [MEMORY[0x277D75348] systemMidGrayColor];
  }

  else
  {
    [(TVFocusableTextView *)self moreLabelTextColor];
  }
  v3 = ;
  [(UILabel *)self->_moreLabel setTextColor:v3];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(TVFocusableTextView *)self playRecognizer];

  if (v5 != v4)
  {
    return 1;
  }

  v7 = [(TVFocusableTextView *)self playHandler];
  v6 = v7 != 0;

  return v6;
}

- (void)floatingContentView:(id)a3 isTransitioningFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v5 = 1.0;
  v6 = 0.0;
  if ((a5 & 8) != 0)
  {
    v6 = 1.0;
  }

  if (!self->_alwaysShowBackground)
  {
    v5 = v6;
  }

  [(UIVisualEffectView *)self->_backgroundView setAlpha:a3, a4, v5];
}

- (void)_selectButtonAction:(id)a3
{
  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    selectionHandler[2](selectionHandler, a3);
  }
}

- (void)_playButtonAction:(id)a3
{
  playHandler = self->_playHandler;
  if (playHandler)
  {
    playHandler[2](playHandler, a3);
  }
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end