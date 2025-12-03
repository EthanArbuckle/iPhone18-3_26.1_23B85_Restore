@interface VUITextLayout
- (UIEdgeInsets)margin;
- (UIEdgeInsets)padding;
- (VUITextLayout)init;
- (id)_defaultParagraphStyle;
- (id)attributedStringWithAttributedString:(id)string textColor:(id)color;
- (id)attributedStringWithAttributedString:(id)string view:(id)view updateTextColor:(BOOL)color;
- (id)attributedStringWithString:(id)string isHighlighted:(BOOL)highlighted isDisabled:(BOOL)disabled;
- (id)attributedStringWithString:(id)string view:(id)view;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultAttributesForLabel:(id)label;
- (unint64_t)numberOfLinesForTraitCollection:(id)collection;
- (void)setColorWithOpacityType:(int64_t)type;
@end

@implementation VUITextLayout

- (VUITextLayout)init
{
  v3.receiver = self;
  v3.super_class = VUITextLayout;
  result = [(VUITextLayout *)&v3 init];
  if (result)
  {
    result->_textStyle = -1;
    *&result->_fontWeight = xmmword_1E4296D70;
    result->_fontFeature = 0;
    *&result->_alignment = xmmword_1E4296D80;
    result->_numberOfLinesAXSmall = 0;
    result->_numberOfLinesAXLarge = 0;
    *&result->_shouldAllowParagraphHyphenation = 257;
    result->_blendMode = 0;
    result->_shouldUpdateTextColor = 1;
    *&result->_allowsTextAlignmentOverride = 0;
    result->_seeMoreHorizontalMargin = 10.0;
    result->_maximumContentSizeCategory = 0;
    result->_appliesColorToStringAttachments = 0;
    result->_lineBreakMode = 4;
    result->_preferredVibrancy = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VUITextLayout allocWithZone:?]];
  [(VUITextLayout *)v4 setTextStyle:self->_textStyle];
  v5 = [(NSString *)self->_fontFamily copy];
  [(VUITextLayout *)v4 setFontFamily:v5];

  [(VUITextLayout *)v4 setFontWeight:self->_fontWeight];
  [(VUITextLayout *)v4 setFontSize:self->_fontSize];
  [(VUITextLayout *)v4 setFontTraits:self->_fontTraits];
  [(VUITextLayout *)v4 setFontFeature:self->_fontFeature];
  [(VUITextLayout *)v4 setMargin:self->_margin.top, self->_margin.left, self->_margin.bottom, self->_margin.right];
  v6 = [(UIColor *)self->_color copy];
  [(VUITextLayout *)v4 setColor:v6];

  v7 = [(UIColor *)self->_highlightOrSelectedColor copy];
  [(VUITextLayout *)v4 setHighlightOrSelectedColor:v7];

  v8 = [(UIColor *)self->_disabledColor copy];
  [(VUITextLayout *)v4 setDisabledColor:v8];

  v9 = [(UIColor *)self->_seeMoreTextColor copy];
  [(VUITextLayout *)v4 setSeeMoreTextColor:v9];

  [(VUITextLayout *)v4 setTextTransform:self->_textTransform];
  [(VUITextLayout *)v4 setAlignment:self->_alignment];
  [(VUITextLayout *)v4 setAllowsTextAlignmentOverride:self->_allowsTextAlignmentOverride];
  [(VUITextLayout *)v4 setAppliesDirectionalIsolates:self->_appliesDirectionalIsolates];
  [(VUITextLayout *)v4 setNumberOfLines:self->_numberOfLines];
  [(VUITextLayout *)v4 setNumberOfLinesAXSmall:self->_numberOfLinesAXSmall];
  [(VUITextLayout *)v4 setNumberOfLinesAXLarge:self->_numberOfLinesAXLarge];
  [(VUITextLayout *)v4 setShadow:self->_shadow];
  [(VUITextLayout *)v4 setAppliesShadowToContainer:self->_appliesShadowToContainer];
  v10 = [(NSNumber *)self->_letterSpacing copy];
  [(VUITextLayout *)v4 setLetterSpacing:v10];

  [(VUITextLayout *)v4 setLineBreakMode:self->_lineBreakMode];
  [(VUITextLayout *)v4 setFadesOutTextTruncation:self->_fadesOutTextTruncation];
  [(VUITextLayout *)v4 setShouldAllowParagraphHyphenation:self->_shouldAllowParagraphHyphenation];
  [(VUITextLayout *)v4 setHighContrastTintColor:self->_highContrastTintColor];
  [(VUITextLayout *)v4 setBlendMode:self->_blendMode];
  [(VUITextLayout *)v4 setAlwaysFocusable:self->_alwaysFocusable];
  [(VUITextLayout *)v4 setShouldUpdateTextColor:self->_shouldUpdateTextColor];
  [(VUITextLayout *)v4 setMaximumContentSizeCategory:self->_maximumContentSizeCategory];
  v11 = [(UIColor *)self->_darkColor copy];
  [(VUITextLayout *)v4 setDarkColor:v11];

  [(VUITextLayout *)v4 setSeeMoreHorizontalMargin:self->_seeMoreHorizontalMargin];
  [(VUITextLayout *)v4 setSeeMoreHasPlatter:self->_seeMoreHasPlatter];
  [(VUITextLayout *)v4 setAvoidsFocusedTextShadow:self->_avoidsFocusedTextShadow];
  [(VUITextLayout *)v4 setMinimumScaleFactor:self->_minimumScaleFactor];
  v12 = [(UIColor *)self->_darkHighlightOrSelectedColor copy];
  [(VUITextLayout *)v4 setDarkHighlightOrSelectedColor:v12];

  v13 = [(UIColor *)self->_darkSeeMoreTextColor copy];
  [(VUITextLayout *)v4 setDarkSeeMoreTextColor:v13];

  [(VUITextLayout *)v4 setCompositingFilter:self->_compositingFilter];
  [(VUITextLayout *)v4 setDarkCompositingFilter:self->_darkCompositingFilter];
  [(VUITextLayout *)v4 setPreferredVibrancy:self->_preferredVibrancy];
  return v4;
}

- (id)defaultAttributesForLabel:(id)label
{
  v4 = MEMORY[0x1E695DF90];
  labelCopy = label;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E69DB878] vui_fontFromTextLayout:self];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  traitCollection = [labelCopy traitCollection];

  if ([traitCollection userInterfaceStyle] != 2)
  {

LABEL_5:
    color = self->_color;
    if (!color)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  darkColor = self->_darkColor;

  if (!darkColor)
  {
    goto LABEL_5;
  }

  color = self->_darkColor;
LABEL_6:
  v12 = color;

  blackColor = v12;
LABEL_7:
  [v6 setObject:blackColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (!self->_appliesShadowToContainer)
  {
    [v6 setObject:self->_shadow forKeyedSubscript:*MEMORY[0x1E69DB6A8]];
  }

  _defaultParagraphStyle = [(VUITextLayout *)self _defaultParagraphStyle];
  [v6 setObject:_defaultParagraphStyle forKeyedSubscript:*MEMORY[0x1E69DB688]];

  v14 = [v6 copy];

  return v14;
}

- (void)setColorWithOpacityType:(int64_t)type
{
  v5 = [MEMORY[0x1E69DC888] vui_opacityColorWithType:type userInterfaceStyle:1];
  [(VUITextLayout *)self setColor:v5];

  v6 = [MEMORY[0x1E69DC888] vui_opacityColorWithType:type userInterfaceStyle:2];
  [(VUITextLayout *)self setDarkColor:v6];
}

- (unint64_t)numberOfLinesForTraitCollection:(id)collection
{
  collectionCopy = collection;
  numberOfLines = [(VUITextLayout *)self numberOfLines];
  if (collectionCopy)
  {
    if ([collectionCopy isAXSmallEnabled])
    {
      numberOfLinesAXSmall = [(VUITextLayout *)self numberOfLinesAXSmall];
LABEL_6:
      numberOfLines = numberOfLinesAXSmall;
      goto LABEL_7;
    }

    if ([collectionCopy isAXLargeEnabled])
    {
      numberOfLinesAXSmall = [(VUITextLayout *)self numberOfLinesAXLarge];
      goto LABEL_6;
    }
  }

LABEL_7:

  return numberOfLines;
}

- (id)attributedStringWithString:(id)string view:(id)view
{
  stringCopy = string;
  viewCopy = view;
  if (stringCopy && (v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy]) != 0)
  {
    v9 = v8;
    v10 = [(VUITextLayout *)self attributedStringWithAttributedString:v8 view:viewCopy updateTextColor:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)attributedStringWithAttributedString:(id)string view:(id)view updateTextColor:(BOOL)color
{
  stringCopy = string;
  viewCopy = view;
  self->_shouldUpdateTextColor = color;
  v10 = self->_color;
  v11 = UIAccessibilityDarkerSystemColorsEnabled();
  if (viewCopy && v11)
  {
    highContrastTintColor = self->_highContrastTintColor;
    if (highContrastTintColor)
    {
      v13 = highContrastTintColor;
    }

    else
    {
      v13 = [viewCopy _accessibilityHigherContrastTintColorForColor:v10];
    }

    v14 = v13;

    v10 = v14;
  }

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    colorByRemovingTransparency = [(UIColor *)v10 colorByRemovingTransparency];

    v10 = colorByRemovingTransparency;
  }

  if (viewCopy && self->_darkColor)
  {
    if ([viewCopy vuiUserInterfaceStyle] == 2)
    {
      v16 = self->_darkColor;

      v10 = v16;
    }
  }

  else if (!viewCopy)
  {
    goto LABEL_29;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([viewCopy isEnabled] & 1) == 0)
  {
    disabledColor = self->_disabledColor;
    if (!disabledColor)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (((objc_opt_respondsToSelector() & 1) == 0 || ([viewCopy isHighlighted] & 1) == 0) && ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend(viewCopy, "isSelected")))
    {
      goto LABEL_27;
    }

    highlightOrSelectedColor = self->_highlightOrSelectedColor;
    if (highlightOrSelectedColor)
    {
      v18 = highlightOrSelectedColor;

      v10 = v18;
    }

    if (!self->_darkHighlightOrSelectedColor || [viewCopy vuiUserInterfaceStyle] != 2)
    {
      goto LABEL_27;
    }

    disabledColor = self->_darkHighlightOrSelectedColor;
  }

  v20 = disabledColor;

  v10 = v20;
LABEL_27:
  if (v10)
  {
    v21 = [viewCopy _accessibilityHigherContrastTintColorForColor:v10];

    v10 = v21;
  }

LABEL_29:
  v22 = [(VUITextLayout *)self attributedStringWithAttributedString:stringCopy textColor:v10];

  return v22;
}

- (id)attributedStringWithString:(id)string isHighlighted:(BOOL)highlighted isDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  highlightedCopy = highlighted;
  stringCopy = string;
  if (stringCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = self->_color;
  if (disabledCopy && (disabledColor = self->_disabledColor) != 0 || highlightedCopy && (disabledColor = self->_highlightOrSelectedColor) != 0)
  {
    v12 = disabledColor;

    v10 = v12;
  }

  v13 = [(VUITextLayout *)self attributedStringWithAttributedString:v9 textColor:v10];

  return v13;
}

- (id)attributedStringWithAttributedString:(id)string textColor:(id)color
{
  stringCopy = string;
  colorCopy = color;
  if (![stringCopy length])
  {
    goto LABEL_11;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:stringCopy];
  v9 = [stringCopy length];
  string = [stringCopy string];
  v11 = string;
  textTransform = self->_textTransform;
  switch(textTransform)
  {
    case 3:
      localizedCapitalizedString = [string localizedCapitalizedString];
      break;
    case 2:
      localizedCapitalizedString = [string localizedUppercaseString];
      break;
    case 1:
      localizedCapitalizedString = [string localizedLowercaseString];
      break;
    default:
      goto LABEL_9;
  }

  v14 = localizedCapitalizedString;

  mutableString = [v8 mutableString];
  [mutableString setString:v14];

  v11 = v14;
LABEL_9:
  v16 = [MEMORY[0x1E69DB878] vui_fontFromTextLayout:self];
  _defaultParagraphStyle = [(VUITextLayout *)self _defaultParagraphStyle];
  v18 = [_defaultParagraphStyle mutableCopy];

  objc_initWeak(&location, self);
  [v8 beginEditing];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __64__VUITextLayout_attributedStringWithAttributedString_textColor___block_invoke;
  v27 = &unk_1E872F5F8;
  objc_copyWeak(&v32, &location);
  v19 = v8;
  v28 = v19;
  v20 = v18;
  v29 = v20;
  v30 = colorCopy;
  v21 = v16;
  v31 = v21;
  [v19 enumerateAttributesInRange:0 options:v9 usingBlock:{0, &v24}];
  [v19 endEditing];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  if (v19)
  {
    v22 = [v19 copy];

    goto LABEL_12;
  }

LABEL_11:
  v22 = stringCopy;
LABEL_12:

  return v22;
}

void __64__VUITextLayout_attributedStringWithAttributedString_textColor___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [WeakRetained letterSpacing];
  v9 = [WeakRetained shadow];
  v10 = *MEMORY[0x1E69DB688];
  v11 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];

  if (!v11)
  {
    [*(a1 + 32) addAttribute:v10 value:*(a1 + 40) range:{a3, a4}];
  }

  v12 = *MEMORY[0x1E69DB660];
  v13 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69DB660]];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v8 == 0;
  }

  if (!v14)
  {
    [*(a1 + 32) addAttribute:v12 value:v8 range:{a3, a4}];
  }

  v15 = *MEMORY[0x1E69DB6A8];
  v16 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69DB6A8]];
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v9 == 0;
  }

  if (v17)
  {
  }

  else if ([WeakRetained appliesShadowToContainer])
  {
    [*(a1 + 32) addAttribute:v15 value:v9 range:{a3, a4}];
  }

  v19 = *MEMORY[0x1E69DB650];
  v20 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v20)
  {
  }

  else
  {
    v21 = *(a1 + 48);
    if (v21)
    {
      [*(a1 + 32) addAttribute:v19 value:v21 range:{a3, a4}];
    }
  }

  v22 = *MEMORY[0x1E69DB648];
  v23 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v23)
  {
  }

  else
  {
    v24 = *(a1 + 56);
    if (v24)
    {
      [*(a1 + 32) addAttribute:v22 value:v24 range:{a3, a4}];
    }
  }
}

- (id)_defaultParagraphStyle
{
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v4 = [defaultParagraphStyle mutableCopy];

  [v4 setAlignment:self->_alignment];
  if (self->_fadesOutTextTruncation)
  {
    lineBreakMode = 2;
  }

  else
  {
    lineBreakMode = self->_lineBreakMode;
  }

  [v4 setLineBreakMode:lineBreakMode];
  if (!self->_lineBreakMode && self->_shouldAllowParagraphHyphenation)
  {
    LODWORD(v6) = 1.0;
    [v4 setHyphenationFactor:v6];
  }

  return v4;
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

- (UIEdgeInsets)margin
{
  top = self->_margin.top;
  left = self->_margin.left;
  bottom = self->_margin.bottom;
  right = self->_margin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end