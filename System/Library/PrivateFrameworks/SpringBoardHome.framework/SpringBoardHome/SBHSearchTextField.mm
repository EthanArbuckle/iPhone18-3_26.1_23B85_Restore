@interface SBHSearchTextField
+ (id)borderColorForUserInterfaceStyle:(int64_t)style;
+ (int64_t)_derivedTextAlignmentForBehavior:(int64_t)behavior hasSearchText:(BOOL)text isEditing:(BOOL)editing;
- (BOOL)_hasSearchText;
- (CGRect)_adjustedTextOrEditingRect:(CGRect)rect forBounds:(CGRect)bounds;
- (CGRect)_calculateEditingRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l;
- (CGRect)_calculatePlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l;
- (CGRect)_calculateTextRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l;
- (CGRect)_frameForLeftViewWithinBounds:(CGRect)bounds alignment:(int64_t)alignment;
- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l willOverflow:(BOOL *)overflow;
- (CGRect)_frameForRightViewWithinBounds:(CGRect)bounds alignment:(int64_t)alignment;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBHSearchTextField)initWithFrame:(CGRect)frame;
- (double)_calculateHeightWithFont;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (int64_t)_derivedTextAlignment;
- (int64_t)_derivedTextAlignmentIfEditing:(BOOL)editing;
- (void)_effectiveAppearanceDidChange;
- (void)_textDidChange:(id)change;
- (void)_updateTextAlignmentForEditing:(BOOL)editing animated:(BOOL)animated;
- (void)buildMenuWithBuilder:(id)builder;
- (void)layoutSubviews;
- (void)setAlignmentBehavior:(int64_t)behavior animated:(BOOL)animated;
- (void)setFont:(id)font;
- (void)setLegibilitySettings:(id)settings;
- (void)setReturnKeyType:(int64_t)type;
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
  traitCollection = [(SBHSearchTextField *)self traitCollection];
  v4 = MEMORY[0x1E69DD1B8];
  v31 = traitCollection;
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = UIContentSizeCategoryClip();
  v7 = [v4 traitCollectionWithPreferredContentSizeCategory:v6];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] compatibleWithTraitCollection:v7];
  if ([(SBHSearchTextField *)self _derivedTextAlignment]== 1)
  {
    self->_alwaysHideLeadingView = 0;
  }

  else
  {
    preferredContentSizeCategory2 = [v7 preferredContentSizeCategory];
    self->_alwaysHideLeadingView = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);
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

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(SBHSearchTextField *)self setTintColor:whiteColor];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [(SBHSearchTextField *)self setTextColor:whiteColor2];

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
  leftView = [(SBHSearchTextField *)self leftView];
  v17 = SBFSafeCast();

  objc_opt_class();
  rightView = [(SBHSearchTextField *)self rightView];
  v19 = SBFSafeCast();

  _clearButton = [(SBHSearchTextField *)self _clearButton];
  _placeholderLabel = [(SBHSearchTextField *)self _placeholderLabel];
  [_placeholderLabel setTextColor:v15];
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
  [_clearButton setImage:self->_cancelButtonImage forState:0];
  _background = [(SBHSearchTextField *)self _background];

  if (!_background)
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
  layer = [(SBHSearchTextField *)self layer];
  [layer setAllowsGroupBlending:0];
}

- (int64_t)_derivedTextAlignment
{
  isEditing = [(SBHSearchTextField *)self isEditing];

  return [(SBHSearchTextField *)self _derivedTextAlignmentIfEditing:isEditing];
}

- (BOOL)_hasSearchText
{
  text = [(UISearchTextField *)self text];
  v3 = [text length] != 0;

  return v3;
}

- (void)updateStyleForLeftView
{
  leftView = [(SBHSearchTextField *)self leftView];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [leftView setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:leftView];
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
  rightView = [(SBHSearchTextField *)self rightView];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [rightView setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:rightView];
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
  _clearButton = [(SBHSearchTextField *)self _clearButton];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    layer = [_clearButton layer];
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [layer setCompositingFilter:v4];

    [_clearButton setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:_clearButton];
  }
}

- (void)updateStyleForPlaceholderView
{
  _placeholderView = [(SBHSearchTextField *)self _placeholderView];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [(NSHashTable *)self->_styledViews addObject:_placeholderView];
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
  traitCollection = [(SBHSearchTextField *)self traitCollection];
  [traitCollection displayScale];

  font = [(SBHSearchTextField *)self font];
  [font lineHeight];
  v6 = v5 + 26.0;
  [font descender];
  v8 = v6 + v7;
  v9 = 48.0;
  if (v8 >= 48.0)
  {
    BSFloatCeilForScale();
    v9 = v10;
  }

  return v9;
}

- (SBHSearchTextField)initWithFrame:(CGRect)frame
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SBHSearchTextField;
  v3 = [(SBHSearchTextField *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    styledViews = v4->_styledViews;
    v4->_styledViews = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__didEndEditing_ name:*MEMORY[0x1E69DE5C8] object:v4];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel__didBeginEditing_ name:*MEMORY[0x1E69DE5B8] object:v4];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v4 selector:sel__textDidChange_ name:*MEMORY[0x1E69DE5C0] object:v4];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v15.receiver = self;
  v15.super_class = SBHSearchTextField;
  [(SBHSearchTextField *)&v15 sizeThatFits:fits.width, fits.height];
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

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v6 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBHSearchTextField *)self updateVisualStyling];
    settingsCopy = v6;
  }
}

- (void)_textDidChange:(id)change
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

- (void)setAlignmentBehavior:(int64_t)behavior animated:(BOOL)animated
{
  if (self->_alignmentBehavior != behavior)
  {
    animatedCopy = animated;
    self->_alignmentBehavior = behavior;
    isEditing = [(SBHSearchTextField *)self isEditing];

    [(SBHSearchTextField *)self _updateTextAlignmentForEditing:isEditing animated:animatedCopy];
  }
}

+ (int64_t)_derivedTextAlignmentForBehavior:(int64_t)behavior hasSearchText:(BOOL)text isEditing:(BOOL)editing
{
  if (editing)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  if (behavior)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_derivedTextAlignmentIfEditing:(BOOL)editing
{
  editingCopy = editing;
  _hasSearchText = [(SBHSearchTextField *)self _hasSearchText];
  alignmentBehavior = self->_alignmentBehavior;
  v7 = objc_opt_class();

  return [v7 _derivedTextAlignmentForBehavior:alignmentBehavior hasSearchText:_hasSearchText isEditing:editingCopy];
}

- (void)_updateTextAlignmentForEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(SBHSearchTextField *)self _derivedTextAlignmentIfEditing:editing];
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
    if (animatedCopy)
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
  traitCollection = [(SBHSearchTextField *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

- (void)setFont:(id)font
{
  fontCopy = font;
  v8.receiver = self;
  v8.super_class = SBHSearchTextField;
  font = [(SBHSearchTextField *)&v8 font];
  v6 = [font isEqual:fontCopy];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = SBHSearchTextField;
    [(SBHSearchTextField *)&v7 setFont:fontCopy];
    [(SBHSearchTextField *)self invalidateIntrinsicContentSize];
  }
}

- (void)setReturnKeyType:(int64_t)type
{
  if ([(SBHSearchTextField *)self returnKeyType]!= type)
  {
    v6.receiver = self;
    v6.super_class = SBHSearchTextField;
    [(SBHSearchTextField *)&v6 setReturnKeyType:type];
    activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
    [activeInstance takeTextInputTraitsFromDelegate];
    [activeInstance updateReturnKey:1];
  }
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(SBHSearchTextField *)self _derivedTextAlignment];
  v9 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;

  [(SBHSearchTextField *)self _calculatePlaceholderRectForBounds:_derivedTextAlignment alignment:v9 isRTL:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(SBHSearchTextField *)self _derivedTextAlignment];
  -[SBHSearchTextField _calculateTextRectForBounds:alignment:isRTL:](self, "_calculateTextRectForBounds:alignment:isRTL:", _derivedTextAlignment, [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, x, y, width, height);

  [SBHSearchTextField _adjustedTextOrEditingRect:"_adjustedTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(SBHSearchTextField *)self _derivedTextAlignment];
  -[SBHSearchTextField _calculateEditingRectForBounds:alignment:isRTL:](self, "_calculateEditingRectForBounds:alignment:isRTL:", _derivedTextAlignment, [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, x, y, width, height);

  [SBHSearchTextField _adjustedTextOrEditingRect:"_adjustedTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(SBHSearchTextField *)self _derivedTextAlignment];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    [(SBHSearchTextField *)self _frameForLeftViewWithinBounds:_derivedTextAlignment alignment:x, y, width, height];
  }

  else
  {
    [(SBHSearchTextField *)self _frameForRightViewWithinBounds:_derivedTextAlignment alignment:x, y, width, height];
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(SBHSearchTextField *)self _derivedTextAlignment];

  [(SBHSearchTextField *)self _frameForLeftViewWithinBounds:_derivedTextAlignment alignment:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(SBHSearchTextField *)self _derivedTextAlignment];

  [(SBHSearchTextField *)self _frameForRightViewWithinBounds:_derivedTextAlignment alignment:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
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
  identifier = [regionCopy identifier];
  v21 = [v19 regionWithRect:identifier identifier:{v8, v10, v12, Height}];

  return v21;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = MEMORY[0x1E69DCDC8];
  v5 = [(SBHSearchTextField *)self font:interaction];
  [v5 lineHeight];
  v6 = [v4 beamWithPreferredLength:2 axis:?];

  v7 = [MEMORY[0x1E69DCDD0] styleWithShape:v6 constrainedAxes:2];

  return v7;
}

- (CGRect)_frameForLeftViewWithinBounds:(CGRect)bounds alignment:(int64_t)alignment
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  traitCollection = [(SBHSearchTextField *)self traitCollection];
  [traitCollection displayScale];
  v12 = v11;

  UIRectCenteredYInRectScale();
  if (alignment == 1)
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

- (CGRect)_frameForRightViewWithinBounds:(CGRect)bounds alignment:(int64_t)alignment
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  traitCollection = [(SBHSearchTextField *)self traitCollection];
  [traitCollection displayScale];
  v12 = v11;

  UIRectCenteredYInRectScale();
  if (alignment == 1)
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

- (CGRect)_calculateEditingRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l
{
  v5 = bounds.size.height + -26.0;
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

  v8 = bounds.origin.x + v7;
  v9 = bounds.origin.y + 13.0;
  v10 = bounds.size.width - (v7 + v7);
  result.size.height = v5;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_calculateTextRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l
{
  if (alignment == 1)
  {
    [(SBHSearchTextField *)self _frameForPlaceholderRectForBounds:alignment alignment:l isRTL:0 willOverflow:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, v5, v6];
  }

  else
  {
    v10 = bounds.size.height + -26.0;
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

    v7 = bounds.origin.x + v12;
    v8 = bounds.origin.y + 13.0;
    v9 = bounds.size.width - (v12 + v12);
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_calculatePlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l
{
  lCopy = l;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  traitCollection = [(SBHSearchTextField *)self traitCollection];
  [traitCollection displayScale];

  [(SBHSearchTextField *)self _frameForPlaceholderRectForBounds:alignment alignment:lCopy isRTL:0 willOverflow:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (alignment == 1)
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
    if (lCopy)
    {
      v25 = 2.0;
    }

    MinX = v25 + v21;
    if (!lCopy)
    {
      MinX = v20 + MinX;
    }

    v16 = v22 - v20;
  }

  else
  {
    [(SBHSearchTextField *)self _calculateTextRectForBounds:alignment alignment:lCopy isRTL:x, y, width, height];
    if (lCopy)
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

- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l willOverflow:(BOOL *)overflow
{
  height = bounds.size.height;
  width = bounds.size.width;
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = [(SBHSearchTextField *)self traitCollection:alignment];
  [v10 displayScale];

  v11 = height + -26.0;
  if (height + -26.0 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = width - (v11 * 2.0 + 16.0);
  placeholder = [(SBHSearchTextField *)self placeholder];
  v21 = *MEMORY[0x1E69DB648];
  font = [(SBHSearchTextField *)self font];
  v22[0] = font;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [placeholder boundingRectWithSize:0 options:v15 attributes:0 context:{width, height}];

  BSSizeCeilForScale();
  if (overflow)
  {
    *overflow = v16 > v12;
  }

  UIRectCenteredIntegralRectScale();
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

+ (id)borderColorForUserInterfaceStyle:(int64_t)style
{
  if (style > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:dbl_1BEE89C60[style] alpha:{0.08, v3}];
  }

  return v5;
}

- (CGRect)_adjustedTextOrEditingRect:(CGRect)rect forBounds:(CGRect)bounds
{
  traitCollection = [(SBHSearchTextField *)self traitCollection];
  [traitCollection displayScale];

  [(SBHSearchTextField *)self bounds];
  [(SBHSearchTextField *)self _padding];
  font = [(SBHSearchTextField *)self font];
  [font lineHeight];

  BSFloatFloorForScale();
  UIRectCenteredYInRectScale();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = SBHSearchTextField;
  [(SBHSearchTextField *)&v7 buildMenuWithBuilder:builderCopy];
  v5 = +[SBAssessmentModeMonitor sharedInstance];
  isActive = [v5 isActive];

  if (isActive)
  {
    [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE0C8]];
  }
}

@end