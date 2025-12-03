@interface WFSearchTextField
- (BOOL)_hasSearchText;
- (BOOL)resignFirstResponder;
- (CGRect)_adjustedTextOrEditingRect:(CGRect)rect forBounds:(CGRect)bounds;
- (CGRect)_calculateEditingRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l;
- (CGRect)_calculatePlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l;
- (CGRect)_calculateTextRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l;
- (CGRect)_frameForLeftViewWithinBounds:(CGRect)bounds alignment:(int64_t)alignment;
- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l willOverflow:(BOOL *)overflow;
- (CGRect)_frameForRightViewWithinBounds:(CGRect)bounds alignment:(int64_t)alignment;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)_textFieldAccessorySizeFromBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (WFSearchTextField)initWithStyle:(unint64_t)style;
- (WFSearchTextFieldDelegate)textFieldDelegate;
- (double)_calculateHeightWithFont;
- (double)_defaultTextFieldHeight;
- (double)_textFieldAccessoryHorizontalMargin;
- (double)_textFieldAccessoryVerticalMargin;
- (double)_textFieldCornerRadius;
- (double)_textFieldHorizontalEdgeMargin;
- (double)_textFieldVerticalMargin;
- (id)_textFieldTextStyle;
- (int64_t)_derivedTextAlignment;
- (int64_t)_derivedTextAlignmentIfEditing:(BOOL)editing;
- (void)_didBeginEditing:(id)editing;
- (void)_didEndEditing:(id)editing;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_updateTextAlignmentForEditing:(BOOL)editing animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setAlignmentBehavior:(int64_t)behavior animated:(BOOL)animated;
- (void)setFont:(id)font;
- (void)setReturnKeyType:(int64_t)type;
- (void)setText:(id)text;
- (void)setTokens:(id)tokens;
- (void)traitCollectionDidChange:(id)change;
- (void)updateClearButtonVisibility;
- (void)updateStyleForClearButton;
- (void)updateStyleForLeftView;
- (void)updateStyleForPlaceholderView;
- (void)updateStyleForRightView;
- (void)updateVisualStyling;
@end

@implementation WFSearchTextField

- (WFSearchTextFieldDelegate)textFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldDelegate);

  return WeakRetained;
}

- (CGRect)_adjustedTextOrEditingRect:(CGRect)rect forBounds:(CGRect)bounds
{
  traitCollection = [(WFSearchTextField *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;

  [(WFSearchTextField *)self bounds];
  [(WFSearchTextField *)self _padding];
  font = [(WFSearchTextField *)self font];
  [font lineHeight];

  v21 = v7;
  UIRectCenteredYInRectScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ([(WFSearchTextField *)self textAlignment]== 1)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v10 = v10 + -7.0;
    }

    else
    {
      v10 = v10 + 7.0;
    }
  }

  v17 = v16 + 6.0;
  v18 = v12 + -3.0;
  v19 = v10;
  v20 = v14;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v19;
  return result;
}

- (CGRect)_frameForPlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l willOverflow:(BOOL *)overflow
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v30[1] = *MEMORY[0x277D85DE8];
  v12 = [(WFSearchTextField *)self traitCollection:alignment];
  [v12 displayScale];
  v14 = v13;

  [(WFSearchTextField *)self _textFieldAccessoryHorizontalMargin];
  v16 = v15;
  [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
  v18 = width - (v17 + v17 + v16 * 2.0);
  placeholder = [(WFSearchTextField *)self placeholder];
  v29 = *MEMORY[0x277D740A8];
  font = [(WFSearchTextField *)self font];
  v30[0] = font;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [placeholder boundingRectWithSize:0 options:v21 attributes:0 context:{width, height}];
  v23 = v22;

  v24 = ceil(v14 * v23) / v14;
  if (overflow)
  {
    *overflow = v24 > v18;
  }

  UIRectCenteredIntegralRectScale();
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_calculatePlaceholderRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l
{
  lCopy = l;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  traitCollection = [(WFSearchTextField *)self traitCollection];
  [traitCollection displayScale];
  v47 = v13;

  [(WFSearchTextField *)self _frameForPlaceholderRectForBounds:alignment alignment:lCopy isRTL:0 willOverflow:x, y, width, height];
  v16 = v15;
  v18 = v17;
  if (alignment == 1)
  {
    [(WFSearchTextField *)self _textFieldAccessoryHorizontalMargin];
    v20 = v19;
    [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
    v22 = v20 + v21;
    v46 = v47;
    UIRectCenteredXInRectScale();
    v48 = v24;
    v26 = v25;
    v28 = v27;
    v29 = -2.0;
    if (lCopy)
    {
      v29 = 2.0;
    }

    v30 = v29 + v23;
    if (lCopy)
    {
      MinX = v30;
    }

    else
    {
      MinX = v22 + v30;
    }

    [(WFSearchTextField *)self _textFieldAccessoryHorizontalMargin];
    v33 = v32;
    [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
    v35 = v33 + v34;
    v18 = v28;
    v16 = v26 - v35;
  }

  else
  {
    v48 = v14;
    [(WFSearchTextField *)self _calculateTextRectForBounds:alignment alignment:lCopy isRTL:x, y, width, height];
    if (lCopy)
    {
      MaxX = CGRectGetMaxX(*&v36);
      [(WFSearchTextField *)self _textFieldAccessoryHorizontalMargin];
      MinX = MaxX - (v16 + v41);
    }

    else
    {
      MinX = CGRectGetMinX(*&v36);
    }
  }

  v42 = v48;
  v43 = MinX;
  v44 = v16;
  v45 = v18;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v42;
  result.origin.x = v43;
  return result;
}

- (CGRect)_calculateTextRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (alignment == 1)
  {
    [(WFSearchTextField *)self _frameForPlaceholderRectForBounds:1 alignment:l isRTL:0 willOverflow:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }

  else
  {
    [(WFSearchTextField *)self _textFieldHorizontalEdgeMargin:alignment];
    v15 = v14;
    v16 = 0.0;
    if (!self->_alwaysHideLeadingView)
    {
      [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
      v18 = v17;
      [(WFSearchTextField *)self _textFieldAccessoryHorizontalMargin];
      v16 = v18 + v19;
    }

    v20 = v15 + v16;
    [(WFSearchTextField *)self _textFieldVerticalMargin];
    v22 = v21;
    [(WFSearchTextField *)self _textFieldVerticalMargin];
    v24 = v23;
    v10 = x + v20;
    v11 = y + v22;
    v12 = width - (v20 + v20);
    v13 = height - (v22 + v24) + 10.0;
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_calculateEditingRectForBounds:(CGRect)bounds alignment:(int64_t)alignment isRTL:(BOOL)l
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(WFSearchTextField *)self _textFieldHorizontalEdgeMargin:alignment];
  v11 = v10;
  v12 = 0.0;
  if (!self->_alwaysHideLeadingView)
  {
    [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
    v14 = v13;
    [(WFSearchTextField *)self _textFieldAccessoryHorizontalMargin];
    v12 = v14 + v15;
  }

  v16 = v11 + v12;
  [(WFSearchTextField *)self _textFieldVerticalMargin];
  v18 = v17;
  [(WFSearchTextField *)self _textFieldVerticalMargin];
  v19 = y + v18;
  v20 = width - (v16 + v16);
  v22 = height - (v18 + v21) + 10.0;
  v23 = x + v16;
  result.size.height = v22;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v23;
  return result;
}

- (CGRect)_frameForRightViewWithinBounds:(CGRect)bounds alignment:(int64_t)alignment
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  traitCollection = [(WFSearchTextField *)self traitCollection];
  [traitCollection displayScale];
  v12 = v11;

  [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
  UIRectCenteredYInRectScale();
  if (alignment == 1)
  {
    [(WFSearchTextField *)self _calculatePlaceholderRectForBounds:1 alignment:1 isRTL:x, y, width, height, v12];
    CGRectGetMaxX(v17);
    [(WFSearchTextField *)self _textFieldAccessoryHorizontalMargin];
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    CGRectGetMaxX(v18);
    [(WFSearchTextField *)self _textFieldHorizontalEdgeMargin];
    [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
  }

  UIRectCenteredYInRectScale();
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_frameForLeftViewWithinBounds:(CGRect)bounds alignment:(int64_t)alignment
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  traitCollection = [(WFSearchTextField *)self traitCollection];
  [traitCollection displayScale];
  v12 = v11;

  [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
  UIRectCenteredYInRectScale();
  if (alignment == 1)
  {
    [(WFSearchTextField *)self _calculatePlaceholderRectForBounds:1 alignment:0 isRTL:x, y, width, height, v12];
    CGRectGetMinX(v17);
    [(WFSearchTextField *)self _textFieldAccessoryHorizontalMargin];
    [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    CGRectGetMinX(v18);
    [(WFSearchTextField *)self _textFieldHorizontalEdgeMargin];
  }

  UIRectCenteredYInRectScale();
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = WFSearchTextField;
  [(WFSearchTextField *)&v5 _setContinuousCornerRadius:?];
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:radius];
  [(UIVisualEffectView *)self->_blurView _setContinuousCornerRadius:radius];
}

- (void)updateStyleForClearButton
{
  _clearButton = [(WFSearchTextField *)self _clearButton];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [_clearButton setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:_clearButton];
  }

  traitCollection = [(WFSearchTextField *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v5 = MEMORY[0x277CDA5E8];
  if (userInterfaceStyle != 2)
  {
    v5 = MEMORY[0x277CDA5D8];
  }

  v6 = *v5;

  layer = [_clearButton layer];
  [layer setCompositingFilter:v6];
}

- (void)updateStyleForRightView
{
  rightView = [(WFSearchTextField *)self rightView];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [rightView setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:rightView];
  }

  traitCollection = [(WFSearchTextField *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v5 = MEMORY[0x277CDA5E8];
  if (userInterfaceStyle != 2)
  {
    v5 = MEMORY[0x277CDA5D8];
  }

  v6 = *v5;

  layer = [rightView layer];
  [layer setCompositingFilter:v6];

  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    if (self->_alwaysHideLeadingView)
    {
      v8 = 0;
    }

    else
    {
      v8 = 3;
    }

    [(WFSearchTextField *)self setRightViewMode:v8];
  }
}

- (void)updateStyleForLeftView
{
  leftView = [(WFSearchTextField *)self leftView];
  if (![(NSHashTable *)self->_styledViews containsObject:?])
  {
    [leftView setContentMode:1];
    [(NSHashTable *)self->_styledViews addObject:leftView];
  }

  traitCollection = [(WFSearchTextField *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v5 = MEMORY[0x277CDA5E8];
  if (userInterfaceStyle != 2)
  {
    v5 = MEMORY[0x277CDA5D8];
  }

  v6 = *v5;

  layer = [leftView layer];
  [layer setCompositingFilter:v6];

  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
  {
    if (self->_alwaysHideLeadingView)
    {
      v8 = 0;
    }

    else
    {
      v8 = 3;
    }

    [(WFSearchTextField *)self setLeftViewMode:v8];
  }
}

- (void)updateStyleForPlaceholderView
{
  _placeholderView = [(WFSearchTextField *)self _placeholderView];
  traitCollection = [(WFSearchTextField *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v6 = MEMORY[0x277CDA5E8];
  if (userInterfaceStyle != 2)
  {
    v6 = MEMORY[0x277CDA5D8];
  }

  v7 = *v6;

  layer = [_placeholderView layer];
  [layer setCompositingFilter:v7];

  v11 = _placeholderView;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setAdjustsFontSizeToFitWidth:1];
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  traitCollection = [(WFSearchTextField *)self traitCollection];
  [traitCollection displayScale];

  [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetMaxX(v13);
  [(WFSearchTextField *)self _textFieldHorizontalEdgeMargin];
  [(WFSearchTextField *)self _textFieldAccessorySizeFromBounds:x, y, width, height];
  UIRectCenteredYInRectScale();
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
  _derivedTextAlignment = [(WFSearchTextField *)self _derivedTextAlignment];

  [(WFSearchTextField *)self _frameForLeftViewWithinBounds:_derivedTextAlignment alignment:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = WFSearchTextField;
  resignFirstResponder = [(UISearchTextField *)&v6 resignFirstResponder];
  if (![(WFSearchTextField *)self _hasSearchText])
  {
    textFieldDelegate = [(WFSearchTextField *)self textFieldDelegate];
    [textFieldDelegate textFieldDidResignFirstResponder];
  }

  return resignFirstResponder;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(WFSearchTextField *)self _derivedTextAlignment];
  -[WFSearchTextField _calculateEditingRectForBounds:alignment:isRTL:](self, "_calculateEditingRectForBounds:alignment:isRTL:", _derivedTextAlignment, [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1, x, y, width, height);

  [WFSearchTextField _adjustedTextOrEditingRect:"_adjustedTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(WFSearchTextField *)self _derivedTextAlignment];
  -[WFSearchTextField _calculateTextRectForBounds:alignment:isRTL:](self, "_calculateTextRectForBounds:alignment:isRTL:", _derivedTextAlignment, [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1, x, y, width, height);

  [WFSearchTextField _adjustedTextOrEditingRect:"_adjustedTextOrEditingRect:forBounds:" forBounds:?];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _derivedTextAlignment = [(WFSearchTextField *)self _derivedTextAlignment];
  v9 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;

  [(WFSearchTextField *)self _calculatePlaceholderRectForBounds:_derivedTextAlignment alignment:v9 isRTL:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)setReturnKeyType:(int64_t)type
{
  if ([(WFSearchTextField *)self returnKeyType]!= type)
  {
    v6.receiver = self;
    v6.super_class = WFSearchTextField;
    [(WFSearchTextField *)&v6 setReturnKeyType:type];
    activeInstance = [MEMORY[0x277D75678] activeInstance];
    [activeInstance takeTextInputTraitsFromDelegate];
    [activeInstance updateReturnKey:1];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  v8.receiver = self;
  v8.super_class = WFSearchTextField;
  font = [(WFSearchTextField *)&v8 font];
  v6 = [font isEqual:fontCopy];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = WFSearchTextField;
    [(WFSearchTextField *)&v7 setFont:fontCopy];
    [(WFSearchTextField *)self invalidateIntrinsicContentSize];
  }
}

- (void)updateVisualStyling
{
  traitCollection = [(WFSearchTextField *)self traitCollection];
  v4 = MEMORY[0x277D75C80];
  v36 = traitCollection;
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = WFUIContentSizeCategoryClip(preferredContentSizeCategory, *MEMORY[0x277D76858], *MEMORY[0x277D767F0]);
  v7 = [v4 traitCollectionWithPreferredContentSizeCategory:v6];

  v8 = MEMORY[0x277D74300];
  _textFieldTextStyle = [(WFSearchTextField *)self _textFieldTextStyle];
  v10 = [v8 preferredFontForTextStyle:_textFieldTextStyle compatibleWithTraitCollection:v7];

  v11 = [MEMORY[0x277D755D0] configurationWithFont:v10];
  if ([(WFSearchTextField *)self _derivedTextAlignment]== 1)
  {
    self->_alwaysHideLeadingView = 0;
  }

  else
  {
    preferredContentSizeCategory2 = [v7 preferredContentSizeCategory];
    self->_alwaysHideLeadingView = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);
  }

  [(WFSearchTextField *)self setFont:v10];
  clearButtonImageView = self->_clearButtonImageView;
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v11];
  [(UIImageView *)clearButtonImageView setImage:v14];

  if (updateVisualStyling_onceToken != -1)
  {
    dispatch_once(&updateVisualStyling_onceToken, &__block_literal_global_244);
  }

  userInterfaceStyle = [v36 userInterfaceStyle];
  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlueColor];
  }
  v16 = ;
  [(WFSearchTextField *)self setTintColor:v16];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [(WFSearchTextField *)self setTextColor:labelColor];

  _placeholderLabel = [(WFSearchTextField *)self _placeholderLabel];
  if (userInterfaceStyle == 2)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.46 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v19 = ;
  [_placeholderLabel setTextColor:v19];

  leftView = [(WFSearchTextField *)self leftView];
  if (leftView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = leftView;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  rightView = [(WFSearchTextField *)self rightView];
  if (rightView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = rightView;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  v26 = &updateVisualStyling_darkModeMagnifyingGlass;
  if (userInterfaceStyle != 2)
  {
    v26 = &updateVisualStyling_lightModeMagnifyingGlass;
  }

  objc_storeStrong(&self->_magnifyingGlassImage, *v26);
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v27 = v25;
  }

  else
  {
    v27 = v22;
  }

  [v27 setImage:self->_magnifyingGlassImage];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setCornerCurve:*MEMORY[0x277CDA138]];

  layer2 = [(UIView *)self->_backgroundView layer];
  [(WFSearchTextField *)self _textFieldCornerRadius];
  [layer2 setCornerRadius:?];

  [(WFSearchTextField *)self updateStyleForLeftView];
  [(WFSearchTextField *)self updateStyleForRightView];
  [(WFSearchTextField *)self updateStyleForClearButton];
  [(WFSearchTextField *)self updateStyleForPlaceholderView];
  if ([(WFSearchTextField *)self style]!= 1)
  {
    traitCollection2 = [(WFSearchTextField *)self traitCollection];
    userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];
    v32 = MEMORY[0x277CDA5E8];
    if (userInterfaceStyle2 != 2)
    {
      v32 = MEMORY[0x277CDA5D8];
    }

    v33 = *v32;

    layer3 = [(UIView *)self->_backgroundView layer];
    [layer3 setCompositingFilter:v33];
  }

  layer4 = [(WFSearchTextField *)self layer];
  [layer4 setAllowsGroupBlending:0];
}

void __40__WFSearchTextField_updateVisualStyling__block_invoke()
{
  v8 = [MEMORY[0x277D755D0] configurationWithWeight:4];
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"magnifyingglass" withConfiguration:v8];
  v1 = [MEMORY[0x277D75348] colorWithWhite:0.46 alpha:1.0];
  v2 = [v0 imageWithTintColor:v1 renderingMode:1];
  v3 = updateVisualStyling_darkModeMagnifyingGlass;
  updateVisualStyling_darkModeMagnifyingGlass = v2;

  v4 = [MEMORY[0x277D755B8] _systemImageNamed:@"magnifyingglass" withConfiguration:v8];
  v5 = [MEMORY[0x277D75348] secondaryLabelColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];
  v7 = updateVisualStyling_lightModeMagnifyingGlass;
  updateVisualStyling_lightModeMagnifyingGlass = v6;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = WFSearchTextField;
  [(WFSearchTextField *)&v11 traitCollectionDidChange:changeCopy];
  [(NSHashTable *)self->_styledViews removeAllObjects];
  [(WFSearchTextField *)self updateVisualStyling];
  if (changeCopy)
  {
    preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
    traitCollection = [(WFSearchTextField *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

    if (preferredContentSizeCategory != preferredContentSizeCategory2)
    {
      traitCollection2 = [(WFSearchTextField *)self traitCollection];
      preferredContentSizeCategory3 = [traitCollection2 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

      if (IsAccessibilityCategory)
      {
        [(WFSearchTextField *)self invalidateIntrinsicContentSize];
      }
    }
  }
}

- (void)setTokens:(id)tokens
{
  v4.receiver = self;
  v4.super_class = WFSearchTextField;
  [(UISearchTextField *)&v4 setTokens:tokens];
  [(WFSearchTextField *)self updateClearButtonVisibility];
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = WFSearchTextField;
  [(UISearchTextField *)&v4 setText:text];
  [(WFSearchTextField *)self updateClearButtonVisibility];
}

- (void)_updateTextAlignmentForEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(WFSearchTextField *)self _derivedTextAlignmentIfEditing:editing];
  if (v6 != [(WFSearchTextField *)self textAlignment])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__WFSearchTextField__updateTextAlignmentForEditing_animated___block_invoke;
    v9[3] = &unk_279EE89D8;
    v9[4] = self;
    v9[5] = v6;
    v7 = _Block_copy(v9);
    v8 = v7;
    if (animatedCopy)
    {
      [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:6 animations:v7 completion:0];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

uint64_t __61__WFSearchTextField__updateTextAlignmentForEditing_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) setTextAlignment:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (int64_t)_derivedTextAlignmentIfEditing:(BOOL)editing
{
  editingCopy = editing;
  if ([(WFSearchTextField *)self _hasSearchText]&& !editingCopy)
  {
    return 4;
  }

  if (editingCopy)
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  if (self->_alignmentBehavior)
  {
    return 4;
  }

  else
  {
    return v6;
  }
}

- (int64_t)_derivedTextAlignment
{
  isEditing = [(WFSearchTextField *)self isEditing];

  return [(WFSearchTextField *)self _derivedTextAlignmentIfEditing:isEditing];
}

- (BOOL)_hasSearchText
{
  text = [(UISearchTextField *)self text];
  if ([text length])
  {
    v4 = 1;
  }

  else
  {
    tokens = [(UISearchTextField *)self tokens];
    v4 = [tokens count] != 0;
  }

  return v4;
}

- (void)setAlignmentBehavior:(int64_t)behavior animated:(BOOL)animated
{
  if (self->_alignmentBehavior != behavior)
  {
    animatedCopy = animated;
    self->_alignmentBehavior = behavior;
    isEditing = [(WFSearchTextField *)self isEditing];

    [(WFSearchTextField *)self _updateTextAlignmentForEditing:isEditing animated:animatedCopy];
  }
}

- (void)updateClearButtonVisibility
{
  _hasSearchText = [(WFSearchTextField *)self _hasSearchText];
  [(UIButton *)self->_clearButton alpha];
  if (((_hasSearchText ^ (v4 != 1.0)) & 1) == 0)
  {
    clearButtonImageView = self->_clearButtonImageView;
    if (_hasSearchText)
    {
      CGAffineTransformMakeScale(&v10, 0.8, 0.8);
      v6 = 0.25;
    }

    else
    {
      v7 = *(MEMORY[0x277CBF2C0] + 16);
      *&v10.a = *MEMORY[0x277CBF2C0];
      *&v10.c = v7;
      *&v10.tx = *(MEMORY[0x277CBF2C0] + 32);
      v6 = 0.15;
    }

    [(UIImageView *)clearButtonImageView setTransform:&v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__WFSearchTextField_updateClearButtonVisibility__block_invoke;
    v8[3] = &unk_279EE8AA0;
    v8[4] = self;
    v9 = _hasSearchText;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:1 response:v8 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v6 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }
}

uint64_t __48__WFSearchTextField_updateClearButtonVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1280) layer];
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  [v2 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  if (*(a1 + 40))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [*(*(a1 + 32) + 1272) setAlpha:v5];
  v6 = *(*(a1 + 32) + 1280);
  if (*(a1 + 40) == 1)
  {
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9.a = *MEMORY[0x277CBF2C0];
    *&v9.c = v7;
    *&v9.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v9, 0.87, 0.87);
  }

  return [v6 setTransform:&v9];
}

- (void)_didBeginEditing:(id)editing
{
  [(WFSearchTextField *)self _updateTextAlignmentForEditing:1 animated:1];

  [(WFSearchTextField *)self updateClearButtonVisibility];
}

- (void)_didEndEditing:(id)editing
{
  [(WFSearchTextField *)self _updateTextAlignmentForEditing:0 animated:1];

  [(WFSearchTextField *)self updateClearButtonVisibility];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFSearchTextField;
  [(UISearchTextField *)&v3 layoutSubviews];
  [(WFSearchTextField *)self updateVisualStyling];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v14.receiver = self;
  v14.super_class = WFSearchTextField;
  [(WFSearchTextField *)&v14 sizeThatFits:fits.width, fits.height];
  v6 = v5;
  v8 = v7;
  [(WFSearchTextField *)self _calculateHeightWithFont];
  v10 = v9;
  if (width < v6 || v9 < v8)
  {
    v12 = fmax(width / v6, v9 / v8);
    width = ceil(v6 * v12);
    v10 = ceil(v8 * v12);
  }

  v13 = width;
  result.height = v10;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(WFSearchTextField *)self _calculateHeightWithFont];
  v4 = v3;
  v7.receiver = self;
  v7.super_class = WFSearchTextField;
  [(UISearchTextField *)&v7 intrinsicContentSize];
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_calculateHeightWithFont
{
  traitCollection = [(WFSearchTextField *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  font = [(WFSearchTextField *)self font];
  [(WFSearchTextField *)self _textFieldVerticalMargin];
  v8 = v7;
  [font lineHeight];
  v10 = v9 + v8 * 2.0;
  [font descender];
  v12 = v10 + v11;
  [(WFSearchTextField *)self _defaultTextFieldHeight];
  if (v12 >= v13)
  {
    v15 = ceil(v5 * v12) / v5;
  }

  else
  {
    [(WFSearchTextField *)self _defaultTextFieldHeight];
    v15 = v14;
  }

  return v15;
}

- (CGSize)_textFieldAccessorySizeFromBounds:(CGRect)bounds
{
  height = bounds.size.height;
  [(WFSearchTextField *)self _textFieldAccessoryVerticalMargin:bounds.origin.x];
  v5 = fmax(height + v4 * -2.0, 0.0);
  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_textFieldHorizontalEdgeMargin
{
  style = [(WFSearchTextField *)self style];
  result = 8.0;
  if (style - 1 <= 3)
  {
    return dbl_274A29D08[style - 1];
  }

  return result;
}

- (double)_defaultTextFieldHeight
{
  style = [(WFSearchTextField *)self style];
  if (style - 1 > 3)
  {
    return 36.0;
  }

  else
  {
    return dbl_274A29CE8[style - 1];
  }
}

- (double)_textFieldAccessoryHorizontalMargin
{
  style = [(WFSearchTextField *)self style];
  v3 = style == 1 || style == 4;
  result = 6.0;
  if (v3)
  {
    return 8.0;
  }

  return result;
}

- (double)_textFieldAccessoryVerticalMargin
{
  style = [(WFSearchTextField *)self style];
  result = 8.0;
  if (style - 1 <= 3)
  {
    return dbl_274A29CC8[style - 1];
  }

  return result;
}

- (double)_textFieldVerticalMargin
{
  style = [(WFSearchTextField *)self style];
  result = 0.0;
  if (style - 1 <= 3)
  {
    return dbl_274A29CA8[style - 1];
  }

  return result;
}

- (id)_textFieldTextStyle
{
  style = [(WFSearchTextField *)self style];
  if ((style - 1) <= 3)
  {
    style = **(&unk_279EE7C30 + (style - 1));
  }

  return style;
}

- (double)_textFieldCornerRadius
{
  style = [(WFSearchTextField *)self style];
  if (style == 1 || style == 4)
  {
    v4 = 16.0;
    if (_UISolariumEnabled())
    {
      [(WFSearchTextField *)self _defaultTextFieldHeight];
      return v5 * 0.5;
    }
  }

  else if (style == 3)
  {
    return 14.0;
  }

  else
  {
    return 9.0;
  }

  return v4;
}

- (WFSearchTextField)initWithStyle:(unint64_t)style
{
  v78[4] = *MEMORY[0x277D85DE8];
  v76.receiver = self;
  v76.super_class = WFSearchTextField;
  v4 = [(WFSearchTextField *)&v76 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    [(UISearchTextField *)v4 setBorderStyle:0];
    v5->_style = style;
    v6 = MEMORY[0x277CDA328];
    v7 = MEMORY[0x277CDA4C8];
    v8 = MEMORY[0x277CDA4A0];
    v9 = 0x277CBE000;
    if (style == 1)
    {
      if (_UISolariumEnabled())
      {
        v10 = objc_alloc_init(MEMORY[0x277D75550]);
        v11 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_9521];
        [v10 setTintColor:v11];

        v12 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v10];
        backgroundView = v5->_backgroundView;
        v5->_backgroundView = v12;
      }

      else
      {
        v17 = objc_alloc_init(MEMORY[0x277D7D508]);
        v18 = v5->_backgroundView;
        v5->_backgroundView = v17;

        v19 = v5->_backgroundView;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UIView *)v19 setBackgroundColor:clearColor];

        v10 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA580]];
        [v10 setValue:&unk_2883C21E0 forKey:*MEMORY[0x277CDA540]];
        v21 = *MEMORY[0x277CDA360];
        [v10 setValue:&unk_2883C2280 forKey:*MEMORY[0x277CDA360]];
        v22 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
        [v22 setValue:&unk_2883C22B0 forKey:v21];
        v23 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA290]];
        [v23 setValue:&unk_2883C22C0 forKey:v21];
        v24 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
        [v24 setValue:&unk_2883C2300 forKey:*MEMORY[0x277CDA4F0]];
        [v24 setValue:MEMORY[0x277CBEC38] forKey:*v7];
        [v24 setValue:MEMORY[0x277CBEC28] forKey:*v8];
        [v24 setValue:@"default" forKey:*MEMORY[0x277CDA4E8]];
        [v24 setValue:@"default" forKey:*MEMORY[0x277CDA4B8]];
        layer = [(UIView *)v5->_backgroundView layer];
        v78[0] = v10;
        v78[1] = v22;
        v78[2] = v23;
        v78[3] = v24;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
        [layer setFilters:v26];

        v6 = MEMORY[0x277CDA328];
        v9 = 0x277CBE000uLL;
      }
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
      v15 = v5->_backgroundView;
      v5->_backgroundView = v14;

      v16 = v5->_backgroundView;
      v10 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_194];
      [(UIView *)v16 setBackgroundColor:v10];
    }

    [(UIView *)v5->_backgroundView setUserInteractionEnabled:0];
    [(UIView *)v5->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_backgroundView setAutoresizingMask:18];
    v27 = v5->_backgroundView;
    [(WFSearchTextField *)v5 bounds];
    [(UIView *)v27 setFrame:?];
    [(WFSearchTextField *)v5 addSubview:v5->_backgroundView];
    [(WFSearchTextField *)v5 sendSubviewToBack:v5->_backgroundView];
    [(WFSearchTextField *)v5 setReturnKeyType:6];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    [(WFSearchTextField *)v5 setAutocorrectionType:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    [(WFSearchTextField *)v5 setSpellCheckingType:(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1];
    [(WFSearchTextField *)v5 setEnablesReturnKeyAutomatically:1];
    [(WFSearchTextField *)v5 setMinimumFontSize:10.0];
    [(WFSearchTextField *)v5 updateVisualStyling];
    v32 = [MEMORY[0x277D75220] buttonWithType:0];
    clearButton = v5->_clearButton;
    v5->_clearButton = v32;

    [(UIButton *)v5->_clearButton setAlpha:0.0];
    [(WFSearchTextField *)v5 setRightView:v5->_clearButton];
    [(WFSearchTextField *)v5 setRightViewMode:3];
    [(WFSearchTextField *)v5 setClearButtonMode:0];
    v34 = objc_alloc_init(MEMORY[0x277D755E8]);
    clearButtonImageView = v5->_clearButtonImageView;
    v5->_clearButtonImageView = v34;

    [(UIImageView *)v5->_clearButtonImageView setContentMode:4];
    v36 = v5->_clearButtonImageView;
    [(UIButton *)v5->_clearButton bounds];
    [(UIImageView *)v36 setFrame:?];
    [(UIImageView *)v5->_clearButtonImageView setAutoresizingMask:18];
    v37 = v5->_clearButtonImageView;
    systemGray2Color = [MEMORY[0x277D75348] systemGray2Color];
    [(UIImageView *)v37 setTintColor:systemGray2Color];

    [(UIImageView *)v5->_clearButtonImageView setUserInteractionEnabled:0];
    [(UIButton *)v5->_clearButton addSubview:v5->_clearButtonImageView];
    v39 = [MEMORY[0x277CD9EA0] filterWithType:*v6];
    [v39 setName:@"gaussianBlur"];
    [v39 setValue:&unk_2883C2290 forKey:*MEMORY[0x277CDA4F0]];
    v40 = MEMORY[0x277CBEC28];
    [v39 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA4C8]];
    [v39 setValue:v40 forKey:*v8];
    [v39 setValue:@"default" forKey:*MEMORY[0x277CDA4E8]];
    [v39 setValue:@"default" forKey:*MEMORY[0x277CDA4B8]];
    layer2 = [(UIImageView *)v5->_clearButtonImageView layer];
    v77 = v39;
    v42 = [*(v9 + 2656) arrayWithObjects:&v77 count:1];
    [layer2 setFilters:v42];

    v43 = v5->_clearButton;
    v44 = MEMORY[0x277D750C8];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __35__WFSearchTextField_initWithStyle___block_invoke_2;
    v74[3] = &unk_279EE82C0;
    v45 = v5;
    v75 = v45;
    v46 = [v44 actionWithHandler:v74];
    [(UIButton *)v43 addAction:v46 forControlEvents:1];

    v47 = v5->_clearButton;
    v48 = MEMORY[0x277D750C8];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __35__WFSearchTextField_initWithStyle___block_invoke_4;
    v72[3] = &unk_279EE82C0;
    v49 = v45;
    v73 = v49;
    v50 = [v48 actionWithHandler:v72];
    [(UIButton *)v47 addAction:v50 forControlEvents:16];

    v51 = v5->_clearButton;
    v52 = MEMORY[0x277D750C8];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __35__WFSearchTextField_initWithStyle___block_invoke_6;
    v70[3] = &unk_279EE82C0;
    v53 = v49;
    v71 = v53;
    v54 = [v52 actionWithHandler:v70];
    [(UIButton *)v51 addAction:v54 forControlEvents:64];

    v55 = v5->_clearButton;
    v56 = MEMORY[0x277D750C8];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __35__WFSearchTextField_initWithStyle___block_invoke_7;
    v68[3] = &unk_279EE82C0;
    v57 = v53;
    v69 = v57;
    v58 = [v56 actionWithHandler:v68];
    [(UIButton *)v55 addAction:v58 forControlEvents:352];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    styledViews = v57->_styledViews;
    v57->_styledViews = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v57 selector:sel__didEndEditing_ name:*MEMORY[0x277D770B8] object:v57];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v57 selector:sel__didBeginEditing_ name:*MEMORY[0x277D770A8] object:v57];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v57 selector:sel__textDidChange_ name:*MEMORY[0x277D770B0] object:v57];

    v57->_alignmentBehavior = 0;
    [(WFSearchTextField *)v57 _updateTextAlignmentForEditing:0 animated:0];
    v64 = v5->_clearButton;
    v65 = WFLocalizedString(@"Clear search field");
    [(UIButton *)v64 setAccessibilityLabel:v65];

    v66 = v57;
  }

  return v5;
}

void __35__WFSearchTextField_initWithStyle___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__WFSearchTextField_initWithStyle___block_invoke_3;
  v2[3] = &unk_279EE8A78;
  v3 = *(a1 + 32);
  [v1 animateWithDuration:v2 animations:0 completion:0.0];
}

void __35__WFSearchTextField_initWithStyle___block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__WFSearchTextField_initWithStyle___block_invoke_5;
  v2[3] = &unk_279EE8A78;
  v3 = *(a1 + 32);
  [v1 animateWithDuration:v2 animations:0 completion:0.25];
}

void __35__WFSearchTextField_initWithStyle___block_invoke_6(uint64_t a1)
{
  if (([*(a1 + 32) isFirstResponder] & 1) == 0)
  {
    [*(a1 + 32) becomeFirstResponder];
  }

  [*(a1 + 32) setTokens:MEMORY[0x277CBEBF8]];
  [*(a1 + 32) setText:&stru_2883A0E78];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D770B0] object:*(a1 + 32)];
}

void __35__WFSearchTextField_initWithStyle___block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__WFSearchTextField_initWithStyle___block_invoke_8;
  v2[3] = &unk_279EE8A78;
  v3 = *(a1 + 32);
  [v1 animateWithDuration:v2 animations:0 completion:0.25];
}

id __35__WFSearchTextField_initWithStyle___block_invoke_192(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] colorWithRed:0.363 green:0.363 blue:0.402 alpha:0.24];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.075];
  }
  v2 = ;

  return v2;
}

id __35__WFSearchTextField_initWithStyle___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.08];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v2 = ;

  return v2;
}

@end