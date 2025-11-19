@interface _TVFocusableTextView
+ (double)cornerRadius;
- (BOOL)canBecomeFocused;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)_moreLabelExclusionPathFrame;
- (CGRect)_moreLabelFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)padding;
- (_TVFocusableTextView)initWithFrame:(CGRect)a3;
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
- (void)setTrackHorizontal:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation _TVFocusableTextView

- (_TVFocusableTextView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34.receiver = self;
  v34.super_class = _TVFocusableTextView;
  v7 = [(_TVFocusableTextView *)&v34 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_disableFocus = 0;
    v7->_alwaysShowBackground = 0;
    v7->_moreHighlightPadding = 14.0;
    v9 = *(MEMORY[0x277D768C8] + 16);
    *&v7->_padding.top = *MEMORY[0x277D768C8];
    *&v7->_padding.bottom = v9;
    v10 = [MEMORY[0x277D75348] clearColor];
    v33.receiver = v8;
    v33.super_class = _TVFocusableTextView;
    [(_TVFocusableTextView *)&v33 setBackgroundColor:v10];

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
    [(_TVFocusableTextView *)v8 addSubview:v8->_floatingView];
    v14 = __38___TVFocusableTextView_initWithFrame___block_invoke();
    auxilliaryTextView = v8->_auxilliaryTextView;
    v8->_auxilliaryTextView = v14;

    v8->_descriptionTextAlignment = 4;
    v16 = __38___TVFocusableTextView_initWithFrame___block_invoke();
    descriptionTextView = v8->_descriptionTextView;
    v8->_descriptionTextView = v16;

    v18 = [(_UIFloatingContentView *)v8->_floatingView contentView];
    [v18 addSubview:v8->_descriptionTextView];

    v19 = objc_alloc(MEMORY[0x277D756B8]);
    v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    moreLabel = v8->_moreLabel;
    v8->_moreLabel = v20;

    [(UILabel *)v8->_moreLabel setText:v8->_moreLabelText];
    v22 = v8->_moreLabel;
    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
    [(UILabel *)v22 setFont:v23];

    [(UILabel *)v8->_moreLabel _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
    v24 = v8->_moreLabel;
    v25 = [(_TVFocusableTextView *)v8 moreLabelText];
    [(UILabel *)v24 setText:v25];

    v26 = v8->_moreLabel;
    v27 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277CC4A88]];
    [(UILabel *)v26 setFont:v27];

    [(UILabel *)v8->_moreLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v8->_moreLabel sizeToFit];
    v28 = [(_UIFloatingContentView *)v8->_floatingView contentView];
    [v28 addSubview:v8->_moreLabel];

    v29 = v8->_moreLabel;
    [(_TVFocusableTextView *)v8 _moreLabelFrame];
    [(UILabel *)v29 setFrame:?];
    v30 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel__selectButtonAction_];
    moreLabelTapGestureRecognizer = v8->_moreLabelTapGestureRecognizer;
    v8->_moreLabelTapGestureRecognizer = v30;

    [(UILabel *)v8->_moreLabel addGestureRecognizer:v8->_moreLabelTapGestureRecognizer];
    [(UILabel *)v8->_moreLabel setUserInteractionEnabled:1];
  }

  return v8;
}

- (void)setDescriptionTextColor:(id)a3
{
  v5 = a3;
  if (self->_descriptionTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_descriptionTextColor, a3);
    [(_TVFocusableTextView *)self setNeedsLayout];
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
    [(_TVFocusableTextView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setDescriptionTextAlignment:(int64_t)a3
{
  if (self->_descriptionTextAlignment != a3)
  {
    self->_descriptionTextAlignment = a3;
    [(_TVFocusableTextView *)self setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_backgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backgroundColor, a3);
    [(_TVFocusableTextView *)self setNeedsLayout];
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
    [(_TVFocusableTextView *)self setNeedsLayout];
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

    [(_TVFocusableTextView *)self setNeedsLayout];
  }
}

- (void)setAlwaysShowBackground:(BOOL)a3
{
  if (self->_alwaysShowBackground != a3)
  {
    self->_alwaysShowBackground = a3;
    [(_TVFocusableTextView *)self setNeedsLayout];
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

  [(_TVFocusableTextView *)self _updateTextColorsForFocusState:v3];
}

- (void)_updateTextColorsForFocusState:(BOOL)a3
{
  if (a3)
  {
    v4 = 448;
  }

  else
  {
    v4 = 440;
  }

  if (*(&self->super.super.super.isa + v4))
  {
    v5 = [(_TVFocusableTextView *)self _accessibilityHigherContrastTintColorForColor:?];
    [(UITextView *)self->_descriptionTextView setTextColor:v5];
  }

  if (self->_moreLabelTextColor)
  {
    moreLabel = self->_moreLabel;

    [(UILabel *)moreLabel setTextColor:?];
  }

  else
  {
    v7 = [(_TVFocusableTextView *)self descriptionText];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [(_TVFocusableTextView *)self descriptionText];
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
  v34[1] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = _TVFocusableTextView;
  [(_TVFocusableTextView *)&v33 layoutSubviews];
  [(_TVFocusableTextView *)self bounds];
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
    v35.origin.x = moreHighlightPadding;
    v35.origin.y = moreHighlightPadding + -6.0;
    v35.size.width = v6;
    v35.size.height = v5;
    v9 = CGRectGetWidth(v35) + self->_moreHighlightPadding * 2.0;
    v36.origin.x = moreHighlightPadding;
    v36.origin.y = moreHighlightPadding + -6.0;
    v36.size.width = v6;
    v36.size.height = v5;
    v10 = moreHighlightPadding + -6.0 + moreHighlightPadding + -3.0 + CGRectGetHeight(v36);
    [(_UIFloatingContentView *)self->_floatingView setFrame:v8, -(moreHighlightPadding + -6.0), v9, v10];
    [(UIVisualEffectView *)self->_backgroundView setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v9, v10];
    [(UITextView *)self->_descriptionTextView setTextAlignment:self->_descriptionTextAlignment];
    v11 = [(_UIFloatingContentView *)self->_floatingView contentView];
    [v11 addSubview:self->_moreLabel];

    moreLabel = self->_moreLabel;
    [(_TVFocusableTextView *)self _moreLabelFrame];
    [(UILabel *)moreLabel setFrame:?];
    [(_TVFocusableTextView *)self _recomputeTextSizeIfNeeded];
    if ([(_TVFocusableTextView *)self isTextTruncating]&& !self->_disableFocus)
    {
      [(UILabel *)self->_moreLabel setHidden:0];
      [(_TVFocusableTextView *)self _moreLabelExclusionPathFrame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [(UITextView *)self->_descriptionTextView textContainerInset];
      v27 = v19 + v26;
      v37.origin.y = v21 + v28;
      v29 = MEMORY[0x277D75208];
      v37.origin.x = v27;
      v37.size.width = v23;
      v37.size.height = v25;
      v38 = CGRectIntegral(v37);
      v13 = [v29 bezierPathWithRect:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];
      v30 = [(UITextView *)self->_descriptionTextView textContainer];
      v34[0] = v13;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      [v30 setExclusionPaths:v31];
    }

    else
    {
      [(UILabel *)self->_moreLabel setHidden:1];
      v13 = [(UITextView *)self->_descriptionTextView textContainer];
      [v13 setExclusionPaths:MEMORY[0x277CBEBF8]];
    }

    [(UILabel *)self->_moreLabel setText:self->_moreLabelText];
    [(_TVFocusableTextView *)self _updateTextColorsIfNeeded];
    [(_TVFocusableTextView *)self _updateBackgroundColors];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedView];
  v6 = [v5 isDescendantOfView:self];

  [(_TVFocusableTextView *)self _updateTextColorsForFocusState:v6];
}

- (BOOL)canBecomeFocused
{
  if ([(_TVFocusableTextView *)self disableFocus])
  {
    return 0;
  }

  v3 = [(UITextView *)self->_descriptionTextView attributedText];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  if ([(_TVFocusableTextView *)self isAlwaysFocusable])
  {
    return 1;
  }

  return [(_TVFocusableTextView *)self isTextTruncating];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_TVFocusableTextView *)self maximumNumberOfLines];
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
  [(_TVFocusableTextView *)self bounds];
  Width = CGRectGetWidth(v8);

  [(_TVFocusableTextView *)self sizeThatFits:Width, 0.0];
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
  [(_TVFocusableTextView *)self _setNeedsTextSizeComputation];
  v8.receiver = self;
  v8.super_class = _TVFocusableTextView;
  [(_TVFocusableTextView *)&v8 setFrame:x, y, width, height];
}

+ (double)cornerRadius
{
  if (!_UISolariumEnabled())
  {
    return 5.0;
  }

  MEMORY[0x2821DE5B0]();
  return result;
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
    v23[2] = __43___TVFocusableTextView_setDescriptionText___block_invoke;
    v23[3] = &unk_279D91A40;
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
      v18 = __43___TVFocusableTextView_setDescriptionText___block_invoke_2;
      v19 = &unk_279D91A68;
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

    [(_TVFocusableTextView *)self _setNeedsTextSizeComputation];
    [(_TVFocusableTextView *)self setNeedsLayout];
  }
}

- (void)setMaximumNumberOfLines:(unint64_t)a3
{
  v5 = [(UITextView *)self->_descriptionTextView textContainer];
  [v5 setMaximumNumberOfLines:a3];

  [(_TVFocusableTextView *)self _setNeedsTextSizeComputation];

  [(_TVFocusableTextView *)self setNeedsLayout];
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
    [v6 setMaximumNumberOfLines:{-[_TVFocusableTextView maximumNumberOfLines](self, "maximumNumberOfLines")}];

    [(UITextView *)self->_auxilliaryTextView sizeThatFits:v5, 0.0];
    v8 = v7;
    v9 = [(UITextView *)self->_auxilliaryTextView textContainer];
    [v9 setMaximumNumberOfLines:0];

    [(UITextView *)self->_auxilliaryTextView sizeThatFits:v5, 0.0];
    [(_TVFocusableTextView *)self setTextTruncating:v10 > v8];

    [(_TVFocusableTextView *)self setNeedsFocusUpdate];
  }
}

- (CGRect)_moreLabelExclusionPathFrame
{
  [(UITextView *)self->_descriptionTextView textContainerInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(_TVFocusableTextView *)self _moreLabelFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (self->_moreLabelOnNewLine)
  {
    [(UITextView *)self->_descriptionTextView frame];
    v9 = v16 - v6 - v8;
  }

  v17 = v11 - v6 + -6.0;
  v18 = v9 + 6.0;
  v19 = v13 - v4;
  v20 = v15;
  result.size.height = v20;
  result.size.width = v18;
  result.origin.y = v19;
  result.origin.x = v17;
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
  v56 = v18;
  [(UILabel *)self->_moreLabel sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v20 = v19;
  v22 = v21;
  if (self->_moreLabelOnNewLine)
  {
    if (v4)
    {
      v58.origin.x = v6;
      v58.origin.y = rect;
      v58.size.width = v9;
      v58.size.height = v11;
      MaxX = CGRectGetMaxX(v58);
      v59.origin.x = 0.0;
      v59.origin.y = 0.0;
      v59.size.width = v20;
      v59.size.height = v22;
      moreHighlightPadding = MaxX - CGRectGetWidth(v59) - self->_moreHighlightPadding;
    }

    else
    {
      moreHighlightPadding = self->_moreHighlightPadding;
    }
  }

  else
  {
    moreHighlightPadding = 10.0;
    if ((v4 & 1) == 0)
    {
      v60.origin.x = v13;
      v60.origin.y = v15;
      v60.size.width = v17;
      v60.size.height = v56;
      v25 = CGRectGetMaxX(v60);
      v61.origin.x = 0.0;
      v61.origin.y = 0.0;
      v61.size.width = v20;
      v61.size.height = v22;
      moreHighlightPadding = v25 - CGRectGetWidth(v61) + -10.0;
    }

    v62.origin.y = 0.0;
    v62.origin.x = moreHighlightPadding;
    v62.size.width = v20;
    v62.size.height = v22;
    Width = CGRectGetWidth(v62);
    v20 = v20 + 10.0;
    if (v4)
    {
      v27 = Width;
      v63.origin.y = 0.0;
      v63.origin.x = moreHighlightPadding;
      v63.size.width = v20;
      v63.size.height = v22;
      moreHighlightPadding = moreHighlightPadding + v27 - CGRectGetWidth(v63);
    }
  }

  v28 = [(UITextView *)self->_descriptionTextView attributedText];
  v64.origin.x = v13;
  v64.origin.y = v15;
  v64.size.width = v17;
  v64.size.height = v56;
  MaxY = CGRectGetMaxY(v64);
  if ([v28 length])
  {
    v57[0] = 0;
    v57[1] = [v28 length];
    v30 = [v28 attributesAtIndex:0 effectiveRange:v57];
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

  v65.origin.y = 0.0;
  v65.origin.x = moreHighlightPadding;
  v65.size.width = v20;
  v65.size.height = v22;
  Height = CGRectGetHeight(v65);
  moreLabelOnNewLine = self->_moreLabelOnNewLine;
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

    v47 = moreHighlightPadding + left;
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

    v47 = moreHighlightPadding - right;
  }

  v48 = MaxY - Height;
  v49 = floorf(v48);
  if (self->_moreLabelOnNewLine)
  {
    v49 = v49 + -3.0;
  }

  v50 = v49 - self->_padding.bottom;

  v51 = v47;
  v52 = v50;
  v53 = v20;
  v54 = v22;
  result.size.height = v54;
  result.size.width = v53;
  result.origin.y = v52;
  result.origin.x = v51;
  return result;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 anyObject];
  v9 = [v8 type];

  if ((v9 & 0xFFFFFFFFFFFFFFFDLL) == 4 && [(_TVFocusableTextView *)self isFocused])
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:9 animated:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVFocusableTextView;
    [(_TVFocusableTextView *)&v10 pressesBegan:v6 withEvent:v7];
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = _TVFocusableTextView;
  [(_TVFocusableTextView *)&v4 tintColorDidChange];
  if ([(_TVFocusableTextView *)self tintAdjustmentMode]== 2)
  {
    [MEMORY[0x277D75348] systemMidGrayColor];
  }

  else
  {
    [(_TVFocusableTextView *)self moreLabelTextColor];
  }
  v3 = ;
  [(UILabel *)self->_moreLabel setTextColor:v3];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_TVFocusableTextView *)self playRecognizer];

  if (v5 != v4)
  {
    return 1;
  }

  v7 = [(_TVFocusableTextView *)self playHandler];
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

  backgroundView = self->_backgroundView;
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