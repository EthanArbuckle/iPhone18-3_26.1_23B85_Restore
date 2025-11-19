@interface SBHSearchTextField
+ (id)borderColorForUserInterfaceStyle:(int64_t)a3;
+ (int64_t)_derivedTextAlignmentForBehavior:(int64_t)a3 hasSearchText:(BOOL)a4 isEditing:(BOOL)a5;
- (BOOL)_hasSearchText;
- (CGRect)_adjustedTextOrEditingRect:(CGRect)a3 forBounds:(CGRect)a4;
- (CGRect)_calculateEditingRectForBounds:(CGRect)a3 alignment:(int64_t)a4 isRTL:(BOOL)a5;
- (CGRect)_calculatePlaceholderRectForBounds:(CGRect)a3 alignment:(int64_t)a4 isRTL:(BOOL)a5;
- (CGRect)_calculateTextRectForBounds:(CGRect)a3 alignment:(int64_t)a4 isRTL:(BOOL)a5;
- (CGRect)_frameForLeftViewWithinBounds:(CGRect)a3 alignment:(int64_t)a4;
- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)a3 alignment:(int64_t)a4 isRTL:(BOOL)a5 willOverflow:(BOOL *)a6;
- (CGRect)_frameForRightViewWithinBounds:(CGRect)a3 alignment:(int64_t)a4;
- (CGRect)clearButtonRectForBounds:(CGRect)a3;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)leftViewRectForBounds:(CGRect)a3;
- (CGRect)placeholderRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBHSearchTextField)initWithFrame:(CGRect)a3;
- (double)_calculateHeightWithFont;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int64_t)_derivedTextAlignment;
- (int64_t)_derivedTextAlignmentIfEditing:(BOOL)a3;
- (void)_effectiveAppearanceDidChange;
- (void)_textDidChange:(id)a3;
- (void)_updateTextAlignmentForEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)layoutSubviews;
- (void)setAlignmentBehavior:(int64_t)a3 animated:(BOOL)a4;
- (void)setFont:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setReturnKeyType:(int64_t)a3;
- (void)updateStyleForClearButton;
- (void)updateStyleForLeftView;
- (void)updateStyleForPlaceholderView;
- (void)updateStyleForRightView;
- (void)updateVisualStyling;
@end

@implementation SBHSearchTextField

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHSearchTextField;
  [(UISearchTextField *)&v3 layoutSubviews];
  [(SBHSearchTextField *)self updateVisualStyling];
}

- (void)updateVisualStyling
{
  v3 = [(SBHSearchTextField *)self traitCollection];
  v4 = MEMORY[0x1E69DD1B8];
  v31 = v3;
  v5 = [v3 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryClip();
  v7 = [v4 traitCollectionWithPreferredContentSizeCategory:v6];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] compatibleWithTraitCollection:v7];
  if ([(SBHSearchTextField *)self _derivedTextAlignment]== 1)
  {
    self->_alwaysHideLeadingView = 0;
  }

  else
  {
    v9 = [v7 preferredContentSizeCategory];
    self->_alwaysHideLeadingView = UIContentSizeCategoryIsAccessibilityCategory(v9);
  }

  [(SBHSearchTextField *)self setFont:v8];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithWeight:4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SBHSearchTextField_updateVisualStyling__block_invoke;
  block[3] = &unk_1E8088C90;
  v11 = v10;
  v33 = v11;
  v30 = v8;
  if (updateVisualStyling_onceToken != -1)
  {
    dispatch_once(&updateVisualStyling_onceToken, block);
  }

  v12 = [MEMORY[0x1E69DC888] whiteColor];
  [(SBHSearchTextField *)self setTintColor:v12];

  v13 = [MEMORY[0x1E69DC888] whiteColor];
  [(SBHSearchTextField *)self setTextColor:v13];

  legibilitySettings = self->_legibilitySettings;
  if (legibilitySettings)
  {
    [(SBHLegibilitySettings *)legibilitySettings primaryColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v15 = ;
  objc_opt_class();
  v16 = [(SBHSearchTextField *)self leftView];
  v17 = SBFSafeCast();

  objc_opt_class();
  v18 = [(SBHSearchTextField *)self rightView];
  v19 = SBFSafeCast();

  v20 = [(SBHSearchTextField *)self _clearButton];
  v21 = [(SBHSearchTextField *)self _placeholderLabel];
  [v21 setTextColor:v15];
  v22 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"magnifyingglass" withConfiguration:v11];
  v23 = [v22 imageWithTintColor:v15 renderingMode:1];
  magnifyingGlassImage = self->_magnifyingGlassImage;
  self->_magnifyingGlassImage = v23;

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v25 = v19;
  }

  else
  {
    v25 = v17;
  }

  [v25 setImage:self->_magnifyingGlassImage];
  objc_storeStrong(&self->_cancelButtonImage, updateVisualStyling_cancelImage);
  [v20 setImage:self->_cancelButtonImage forState:0];
  v26 = [(SBHSearchTextField *)self _background];

  if (!v26)
  {
    v27 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
    [v27 setFlexible:1];
    [v27 setHighlightsDisplayAngle:SBHPerformanceFlagEnabled(1) ^ 1];
    [(SBHSearchTextField *)self _setBackground:v27];
  }

  [(SBHSearchTextField *)self frame];
  [(SBHSearchTextField *)self _setContinuousCornerRadius:v28 * 0.5];
  [(SBHSearchTextField *)self updateStyleForLeftView];
  [(SBHSearchTextField *)self updateStyleForRightView];
  [(SBHSearchTextField *)self updateStyleForClearButton];
  [(SBHSearchTextField *)self updateStyleForPlaceholderView];
  v29 = [(SBHSearchTextField *)self layer];
  [v29 setAllowsGroupBlending:0];
}

- (int64_t)_derivedTextAlignment
{
  v3 = [(SBHSearchTextField *)self isEditing];

  return [(SBHSearchTextField *)self _derivedTextAlignmentIfEditing:v3];
}

- (BOOL)_hasSearchText
{
  v2 = [(UISearchTextField *)self text];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)updateStyleForLeftView
{
  v4 = [(SBHSearchTextField *)self leftView];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [v4 setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:v4];
  }

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] != 1)
  {
    if (self->_alwaysHideLeadingView)
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }

    [(SBHSearchTextField *)self setLeftViewMode:v3];
  }
}

- (void)updateStyleForRightView
{
  v4 = [(SBHSearchTextField *)self rightView];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [v4 setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:v4];
  }

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    if (self->_alwaysHideLeadingView)
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }

    [(SBHSearchTextField *)self setRightViewMode:v3];
  }
}

- (void)updateStyleForClearButton
{
  v5 = [(SBHSearchTextField *)self _clearButton];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    v3 = [v5 layer];
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [v3 setCompositingFilter:v4];

    [v5 setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:v5];
  }
}

- (void)updateStyleForPlaceholderView
{
  v4 = [(SBHSearchTextField *)self _placeholderView];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [(NSHashTable *)self->_styledViews addObject:v4];
  }

  objc_opt_class();
  v3 = SBFSafeCast();
  [v3 setAdjustsFontSizeToFitWidth:1];
}

- (CGSize)intrinsicContentSize
{
  [(SBHSearchTextField *)self _calculateHeightWithFont];
  v4 = v3;
  v7.receiver = self;
  v7.super_class = SBHSearchTextField;
  [(UISearchTextField *)&v7 intrinsicContentSize];
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_calculateHeightWithFont
{
  v3 = [(SBHSearchTextField *)self traitCollection];
  [v3 displayScale];

  v4 = [(SBHSearchTextField *)self font];
  [v4 lineHeight];
  v6 = v5 + 26.0;
  [v4 descender];
  v8 = v6 + v7;
  v9 = 48.0;
  if (v8 >= 48.0)
  {
    BSFloatCeilForScale();
    v9 = v10;
  }

  return v9;
}

- (SBHSearchTextField)initWithFrame:(CGRect)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SBHSearchTextField;
  v3 = [(SBHSearchTextField *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UISearchTextField *)v3 setAccessibilityIdentifier:@"dewey-search-field"];
    [(UISearchTextField *)v4 setBorderStyle:0];
    [(SBHSearchTextField *)v4 setReturnKeyType:6];
    [(SBHSearchTextField *)v4 setKeyboardAppearance:1];
    [(SBHSearchTextField *)v4 setAutocorrectionType:1];
    [(SBHSearchTextField *)v4 setSpellCheckingType:1];
    [(SBHSearchTextField *)v4 setEnablesReturnKeyAutomatically:1];
    [(SBHSearchTextField *)v4 setMinimumFontSize:10.0];
    [(SBHSearchTextField *)v4 updateVisualStyling];
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    styledViews = v4->_styledViews;
    v4->_styledViews = v5;

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v4 selector:sel__didEndEditing_ name:*MEMORY[0x1E69DE5C8] object:v4];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v4 selector:sel__didBeginEditing_ name:*MEMORY[0x1E69DE5B8] object:v4];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v4 selector:sel__textDidChange_ name:*MEMORY[0x1E69DE5C0] object:v4];

    v4->_alignmentBehavior = 0;
    [(SBHSearchTextField *)v4 _updateTextAlignmentForEditing:0 animated:0];
    v10 = objc_opt_self();
    v16[0] = v10;
    v11 = objc_opt_self();
    v16[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v13 = [(SBHSearchTextField *)v4 registerForTraitChanges:v12 withAction:sel__effectiveAppearanceDidChange];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v15.receiver = self;
  v15.super_class = SBHSearchTextField;
  [(SBHSearchTextField *)&v15 sizeThatFits:a3.width, a3.height];
  v6 = v5;
  v8 = v7;
  [(SBHSearchTextField *)self _calculateHeightWithFont];
  v10 = v9;
  if (!SBHSizeGreaterThanOrEqualToSize(width, v9, v6, v8))
  {
    v11 = SBHSizeScaledToFill(width, v10, v6, v8);
    width = SBHSizeCeiling(v11);
    v10 = v12;
  }

  v13 = width;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBHSearchTextField *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)_textDidChange:(id)a3
{
  if ([(SBHSearchTextField *)self _hasSearchText])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [(SBHSearchTextField *)self setClearButtonMode:v4];
}

- (void)setAlignmentBehavior:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_alignmentBehavior != a3)
  {
    v5 = a4;
    self->_alignmentBehavior = a3;
    v7 = [(SBHSearchTextField *)self isEditing];

    [(SBHSearchTextField *)self _updateTextAlignmentForEditing:v7 animated:v5];
  }
}

+ (int64_t)_derivedTextAlignmentForBehavior:(int64_t)a3 hasSearchText:(BOOL)a4 isEditing:(BOOL)a5
{
  if (a5)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  if (a3)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_derivedTextAlignmentIfEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHSearchTextField *)self _hasSearchText];
  alignmentBehavior = self->_alignmentBehavior;
  v7 = objc_opt_class();

  return [v7 _derivedTextAlignmentForBehavior:alignmentBehavior hasSearchText:v5 isEditing:v3];
}

- (void)_updateTextAlignmentForEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBHSearchTextField *)self _derivedTextAlignmentIfEditing:a3];
  if (v6 != [(SBHSearchTextField *)self textAlignment])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__SBHSearchTextField__updateTextAlignmentForEditing_animated___block_invoke;
    v9[3] = &unk_1E8088CB8;
    v9[4] = self;
    v9[5] = v6;
    v7 = _Block_copy(v9);
    v8 = v7;
    if (v4)
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:6 animations:v7 completion:0];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

uint64_t __62__SBHSearchTextField__updateTextAlignmentForEditing_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) setTextAlignment:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_effectiveAppearanceDidChange
{
  [(NSHashTable *)self->_styledViews removeAllObjects];
  [(SBHSearchTextField *)self updateVisualStyling];
  v3 = [(SBHSearchTextField *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {

    [(SBHSearchTextField *)self invalidateIntrinsicContentSize];
  }
}

void __41__SBHSearchTextField_updateVisualStyling__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"xmark.circle.fill" withConfiguration:*(a1 + 32)];
  v1 = [MEMORY[0x1E69DC888] whiteColor];
  v2 = [v4 imageWithTintColor:v1 renderingMode:1];
  v3 = updateVisualStyling_cancelImage;
  updateVisualStyling_cancelImage = v2;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBHSearchTextField;
  v5 = [(SBHSearchTextField *)&v8 font];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = SBHSearchTextField;
    [(SBHSearchTextField *)&v7 setFont:v4];
    [(SBHSearchTextField *)self invalidateIntrinsicContentSize];
  }
}

- (void)setReturnKeyType:(int64_t)a3
{
  if ([(SBHSearchTextField *)self returnKeyType]!= a3)
  {
    v6.receiver = self;
    v6.super_class = SBHSearchTextField;
    [(SBHSearchTextField *)&v6 setReturnKeyType:a3];
    v5 = [MEMORY[0x1E69DCBE0] activeInstance];
    [v5 takeTextInputTraitsFromDelegate];
    [v5 updateReturnKey:1];
  }
}

- (CGRect)placeholderRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBHSearchTextField *)self _derivedTextAlignment];
  v9 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;

  [(SBHSearchTextField *)self _calculatePlaceholderRectForBounds:v8 alignment:v9 isRTL:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBHSearchTextField *)self _derivedTextAlignment];
  -[SBHSearchTextField _calculateTextRectForBounds:alignment:isRTL:](self, "_calculateTextRectForBounds:alignment:isRTL:", v8, [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, x, y, width, height);

  [SBHSearchTextField _adjustedTextOrEditingRect:"_adjustedTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBHSearchTextField *)self _derivedTextAlignment];
  -[SBHSearchTextField _calculateEditingRectForBounds:alignment:isRTL:](self, "_calculateEditingRectForBounds:alignment:isRTL:", v8, [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, x, y, width, height);

  [SBHSearchTextField _adjustedTextOrEditingRect:"_adjustedTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBHSearchTextField *)self _derivedTextAlignment];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    [(SBHSearchTextField *)self _frameForLeftViewWithinBounds:v8 alignment:x, y, width, height];
  }

  else
  {
    [(SBHSearchTextField *)self _frameForRightViewWithinBounds:v8 alignment:x, y, width, height];
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBHSearchTextField *)self _derivedTextAlignment];

  [(SBHSearchTextField *)self _frameForLeftViewWithinBounds:v8 alignment:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBHSearchTextField *)self _derivedTextAlignment];

  [(SBHSearchTextField *)self _frameForRightViewWithinBounds:v8 alignment:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  [(SBHSearchTextField *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  Height = v13;
  if ([(SBHSearchTextField *)self _derivedTextAlignment]!= 1)
  {
    [(SBHSearchTextField *)self editingRectForBounds:v8, v10, v12, Height];
    v16 = v15;
    v18 = v17;
    v24.origin.x = v8;
    v24.origin.y = v10;
    v24.size.width = v12;
    v24.size.height = Height;
    Height = CGRectGetHeight(v24);
    v10 = 0.0;
    v8 = v16;
    v12 = v18;
  }

  v19 = MEMORY[0x1E69DCDC0];
  v20 = [v6 identifier];
  v21 = [v19 regionWithRect:v20 identifier:{v8, v10, v12, Height}];

  return v21;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = MEMORY[0x1E69DCDC8];
  v5 = [(SBHSearchTextField *)self font:a3];
  [v5 lineHeight];
  v6 = [v4 beamWithPreferredLength:2 axis:?];

  v7 = [MEMORY[0x1E69DCDD0] styleWithShape:v6 constrainedAxes:2];

  return v7;
}

- (CGRect)_frameForLeftViewWithinBounds:(CGRect)a3 alignment:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(SBHSearchTextField *)self traitCollection];
  [v10 displayScale];
  v12 = v11;

  UIRectCenteredYInRectScale();
  if (a4 == 1)
  {
    [(SBHSearchTextField *)self _calculatePlaceholderRectForBounds:1 alignment:0 isRTL:x, y, width, height, v12];
  }

  else
  {
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
  }

  CGRectGetMinX(*&v13);
  UIRectCenteredYInRectScale();
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_frameForRightViewWithinBounds:(CGRect)a3 alignment:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(SBHSearchTextField *)self traitCollection];
  [v10 displayScale];
  v12 = v11;

  UIRectCenteredYInRectScale();
  if (a4 == 1)
  {
    [(SBHSearchTextField *)self _calculatePlaceholderRectForBounds:1 alignment:1 isRTL:x, y, width, height, v12];
  }

  else
  {
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
  }

  CGRectGetMaxX(*&v13);
  UIRectCenteredYInRectScale();
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_calculateEditingRectForBounds:(CGRect)a3 alignment:(int64_t)a4 isRTL:(BOOL)a5
{
  v5 = a3.size.height + -26.0;
  v6 = 0.0;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  v7 = v6 + 8.0 + 16.0;
  if (self->_alwaysHideLeadingView)
  {
    v7 = 16.0;
  }

  v8 = a3.origin.x + v7;
  v9 = a3.origin.y + 13.0;
  v10 = a3.size.width - (v7 + v7);
  result.size.height = v5;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_calculateTextRectForBounds:(CGRect)a3 alignment:(int64_t)a4 isRTL:(BOOL)a5
{
  if (a4 == 1)
  {
    [(SBHSearchTextField *)self _frameForPlaceholderRectForBounds:a4 alignment:a5 isRTL:0 willOverflow:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, v5, v6];
  }

  else
  {
    v10 = a3.size.height + -26.0;
    v11 = 0.0;
    if (v10 >= 0.0)
    {
      v11 = v10;
    }

    v12 = v11 + 8.0 + 16.0;
    if (self->_alwaysHideLeadingView)
    {
      v12 = 16.0;
    }

    v7 = a3.origin.x + v12;
    v8 = a3.origin.y + 13.0;
    v9 = a3.size.width - (v12 + v12);
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_calculatePlaceholderRectForBounds:(CGRect)a3 alignment:(int64_t)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(SBHSearchTextField *)self traitCollection];
  [v12 displayScale];

  [(SBHSearchTextField *)self _frameForPlaceholderRectForBounds:a4 alignment:v5 isRTL:0 willOverflow:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (a4 == 1)
  {
    v19 = height + -26.0;
    if (height + -26.0 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = v19 + 8.0;
    UIRectCenteredXInRectScale();
    v14 = v23;
    v18 = v24;
    v25 = -2.0;
    if (v5)
    {
      v25 = 2.0;
    }

    MinX = v25 + v21;
    if (!v5)
    {
      MinX = v20 + MinX;
    }

    v16 = v22 - v20;
  }

  else
  {
    [(SBHSearchTextField *)self _calculateTextRectForBounds:a4 alignment:v5 isRTL:x, y, width, height];
    if (v5)
    {
      MinX = CGRectGetMaxX(*&v27) - (v16 + 8.0);
    }

    else
    {
      MinX = CGRectGetMinX(*&v27);
    }
  }

  v31 = v14;
  v32 = v16;
  v33 = v18;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = MinX;
  return result;
}

- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)a3 alignment:(int64_t)a4 isRTL:(BOOL)a5 willOverflow:(BOOL *)a6
{
  height = a3.size.height;
  width = a3.size.width;
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = [(SBHSearchTextField *)self traitCollection:a4];
  [v10 displayScale];

  v11 = height + -26.0;
  if (height + -26.0 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = width - (v11 * 2.0 + 16.0);
  v13 = [(SBHSearchTextField *)self placeholder];
  v21 = *MEMORY[0x1E69DB648];
  v14 = [(SBHSearchTextField *)self font];
  v22[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v13 boundingRectWithSize:0 options:v15 attributes:0 context:{width, height}];

  BSSizeCeilForScale();
  if (a6)
  {
    *a6 = v16 > v12;
  }

  UIRectCenteredIntegralRectScale();
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

+ (id)borderColorForUserInterfaceStyle:(int64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:dbl_1BEE89C60[a3] alpha:{0.08, v3}];
  }

  return v5;
}

- (CGRect)_adjustedTextOrEditingRect:(CGRect)a3 forBounds:(CGRect)a4
{
  v5 = [(SBHSearchTextField *)self traitCollection];
  [v5 displayScale];

  [(SBHSearchTextField *)self bounds];
  [(SBHSearchTextField *)self _padding];
  v6 = [(SBHSearchTextField *)self font];
  [v6 lineHeight];

  BSFloatFloorForScale();
  UIRectCenteredYInRectScale();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBHSearchTextField;
  [(SBHSearchTextField *)&v7 buildMenuWithBuilder:v4];
  v5 = +[SBAssessmentModeMonitor sharedInstance];
  v6 = [v5 isActive];

  if (v6)
  {
    [v4 removeMenuForIdentifier:*MEMORY[0x1E69DE0C8]];
  }
}

@end