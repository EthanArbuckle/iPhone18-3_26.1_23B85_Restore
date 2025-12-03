@interface NCAuxiliaryOptionsView
- (BOOL)adjustForContentSizeCategoryChange;
- (BSUIFontProvider)fontProvider;
- (CGRect)_optionsSummaryMeasuringFrameForBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCAuxiliaryOptionsView)init;
- (NCAuxiliaryOptionsView)initWithFrame:(CGRect)frame;
- (double)_optionsButtonWidthForBounds:(CGRect)bounds auxiliaryOptionButtonsCount:(unint64_t)count;
- (id)_newOptionsButton;
- (id)_preferredFontForAuxiliaryOptionsSummaryTextLabel;
- (id)_preferredFontForOptionButton;
- (void)_calculateOptionsSummaryLabelLayoutInfoForBoundsSize:(CGSize)size;
- (void)_configureAuxiliaryOptionsSummaryTextLabelIfNecessary;
- (void)_configureOverlayIfNecessary;
- (void)_layoutOptionsButtons;
- (void)_layoutOptionsSummaryLabel;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setDefaultAttributes;
- (void)_updateTextAttributesForOptionsSummaryLabel;
- (void)layoutSubviews;
- (void)setAuxiliaryOptionActions:(id)actions;
- (void)setAuxiliaryOptionsBackgroundColor:(id)color;
- (void)setAuxiliaryOptionsBackgroundCompositingFilter:(id)filter;
- (void)setAuxiliaryOptionsSummaryText:(id)text;
- (void)setAuxiliaryOptionsTextColor:(id)color;
- (void)setAuxiliaryOptionsVisible:(BOOL)visible;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setMaterialRecipe:(int64_t)recipe;
- (void)setMaterialTintColor:(id)color;
@end

@implementation NCAuxiliaryOptionsView

- (NCAuxiliaryOptionsView)init
{
  v5.receiver = self;
  v5.super_class = NCAuxiliaryOptionsView;
  v2 = [(NCAuxiliaryOptionsView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCAuxiliaryOptionsView *)v2 _setDefaultAttributes];
  }

  return v3;
}

- (NCAuxiliaryOptionsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NCAuxiliaryOptionsView;
  v3 = [(NCAuxiliaryOptionsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCAuxiliaryOptionsView *)v3 _setDefaultAttributes];
  }

  return v4;
}

- (BSUIFontProvider)fontProvider
{
  if (!self->_fontProvider)
  {
    if ([(NCAuxiliaryOptionsView *)self adjustsFontForContentSizeCategory])
    {
      [MEMORY[0x277CF0D60] preferredFontProvider];
    }

    else
    {
      [MEMORY[0x277CF0D60] defaultFontProvider];
    }
    v3 = ;
    fontProvider = self->_fontProvider;
    self->_fontProvider = v3;
  }

  v5 = self->_fontProvider;

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v33 = *MEMORY[0x277D85DE8];
  v4 = 0.0;
  if (fits.width > 0.0)
  {
    if (self->_optionsSummaryLabel)
    {
      BSRectWithSize();
      [(NCAuxiliaryOptionsView *)self _optionsSummaryWidthForBounds:?];
      [(UILabel *)self->_optionsSummaryLabel unui_measuringHeightWithNumberOfLines:[(NCAuxiliaryOptionsView *)self _summaryLabelNumberOfLinesForBoundsSize:?]];
      v7 = v6 + 14.0;
    }

    else
    {
      v7 = 14.0;
    }

    auxiliaryOptionButtons = self->_auxiliaryOptionButtons;
    if (auxiliaryOptionButtons)
    {
      firstObject = [(NSArray *)auxiliaryOptionButtons firstObject];
      titleLabel = [firstObject titleLabel];
      font = [titleLabel font];
      [font _scaledValueForValue:44.0];
      v13 = v12;

      BSRectWithSize();
      [(NCAuxiliaryOptionsView *)self _optionsButtonWidthForBounds:[(NSArray *)self->_auxiliaryOptionButtons count] auxiliaryOptionButtonsCount:v14, v15, v16, v17];
      v19 = v18;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = self->_auxiliaryOptionButtons;
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          v24 = 0;
          do
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v28 + 1) + 8 * v24) sizeThatFits:{v19, 1.79769313e308, v28}];
            if (v13 < v25)
            {
              v13 = v25;
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v22);
      }

      v26 = 18.0;
      if (!self->_optionsSummaryLabel)
      {
        v26 = 0.0;
      }

      v7 = v7 + v13 + v26;
    }

    v4 = v7 + 14.0;
  }

  v27 = width;
  result.height = v4;
  result.width = v27;
  return result;
}

- (void)layoutSubviews
{
  [(NCAuxiliaryOptionsView *)self _configureOverlayIfNecessary];
  [(NCAuxiliaryOptionsView *)self _layoutOptionsSummaryLabel];

  [(NCAuxiliaryOptionsView *)self _layoutOptionsButtons];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(NCAuxiliaryOptionsView *)self _configureOverlayIfNecessary];
  layer = [(UIView *)self->_overlayView layer];
  [layer setMaskedCorners:12];

  overlayView = self->_overlayView;

  [(UIView *)overlayView _setContinuousCornerRadius:radius];
}

- (void)setAuxiliaryOptionsSummaryText:(id)text
{
  textCopy = text;
  auxiliaryOptionsSummaryText = [(NCAuxiliaryOptionsView *)self auxiliaryOptionsSummaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (textCopy)
    {
      [(NCAuxiliaryOptionsView *)self _configureAuxiliaryOptionsSummaryTextLabelIfNecessary];
      [(UILabel *)self->_optionsSummaryLabel setText:textCopy];
    }

    else
    {
      [(UILabel *)self->_optionsSummaryLabel removeFromSuperview];
      optionsSummaryLabel = self->_optionsSummaryLabel;
      self->_optionsSummaryLabel = 0;
    }

    [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionsVisible:(BOOL)visible
{
  if (self->_auxiliaryOptionsVisible != visible)
  {
    v9 = v3;
    self->_auxiliaryOptionsVisible = visible;
    v8 = 0.0;
    if (visible)
    {
      v8 = 1.0;
    }

    [(NCAuxiliaryOptionsView *)self setAlpha:v8, v4, v9, v5];

    [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionActions:(id)actions
{
  actionsCopy = actions;
  objc_storeStrong(&self->_auxiliaryOptionActions, actions);
  v5 = [actionsCopy count];
  v6 = [(NSArray *)self->_auxiliaryOptionButtons count];
  v17 = 456;
  auxiliaryOptionButtons = self->_auxiliaryOptionButtons;
  if (auxiliaryOptionButtons)
  {
    v8 = [(NSArray *)auxiliaryOptionButtons mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v9 = v8;
  if (v6 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v11 = 0;
    while (v11 >= v5 || v6 > v11)
    {
      if (v11 < v5 || v6 <= v11)
      {
        _newOptionsButton = [v9 objectAtIndex:{v11, v17}];
        if (_newOptionsButton)
        {
          goto LABEL_17;
        }
      }

      else
      {
        lastObject = [v9 lastObject];
        [lastObject removeFromSuperview];

        [v9 removeLastObject];
      }

LABEL_18:
      if (v10 == ++v11)
      {
        goto LABEL_19;
      }
    }

    _newOptionsButton = [(NCAuxiliaryOptionsView *)self _newOptionsButton];
    [v9 addObject:_newOptionsButton];
    if (!_newOptionsButton)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = [actionsCopy objectAtIndex:{v11, v17}];
    [_newOptionsButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
    [_newOptionsButton addAction:v14 forControlEvents:64];
    title = [v14 title];
    [_newOptionsButton setTitle:title];

    [_newOptionsButton setTextColor:self->_auxiliaryOptionsTextColor];
    [_newOptionsButton setBackgroundTintColor:self->_materialTintColor];
    [_newOptionsButton setBackgroundMaterialRecipe:self->_materialRecipe];
    [_newOptionsButton setMaterialGroupNameBase:self->_materialGroupNameBase];

    goto LABEL_18;
  }

LABEL_19:
  if ([actionsCopy count])
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong((&self->super.super.super.isa + v18), v16);
  [(NCAuxiliaryOptionsView *)self setNeedsLayout];
}

- (void)setAuxiliaryOptionsTextColor:(id)color
{
  v17 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    if (colorCopy)
    {
      _defaultTextColor = colorCopy;
    }

    else
    {
      _defaultTextColor = [(NCAuxiliaryOptionsView *)self _defaultTextColor];
    }

    auxiliaryOptionsTextColor = self->_auxiliaryOptionsTextColor;
    self->_auxiliaryOptionsTextColor = _defaultTextColor;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_auxiliaryOptionButtons;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setTextColor:{self->_auxiliaryOptionsTextColor, v12}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(UILabel *)self->_optionsSummaryLabel setTextColor:self->_auxiliaryOptionsTextColor];
    [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionsBackgroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_auxiliaryOptionsBackgroundColor, color);
    [(UIView *)self->_overlayView setBackgroundColor:self->_auxiliaryOptionsBackgroundColor];
    [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionsBackgroundCompositingFilter:(id)filter
{
  filterCopy = filter;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_auxiliaryOptionsBackgroundCompositingFilter, filter);
    layer = [(UIView *)self->_overlayView layer];
    [layer setCompositingFilter:filterCopy];

    [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  }
}

- (void)setMaterialTintColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_materialTintColor, color);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_auxiliaryOptionButtons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          [*(*(&v11 + 1) + 8 * v10++) setBackgroundTintColor:{self->_materialTintColor, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  }
}

- (void)setMaterialRecipe:(int64_t)recipe
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_materialRecipe != recipe)
  {
    self->_materialRecipe = recipe;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_auxiliaryOptionButtons;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [*(*(&v10 + 1) + 8 * v9++) setBackgroundMaterialRecipe:{recipe, v10}];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  }
}

- (void)setMaterialGroupNameBase:(id)base
{
  v16 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  if ((BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_materialGroupNameBase, base);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_auxiliaryOptionButtons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          [*(*(&v11 + 1) + 8 * v10++) setMaterialGroupNameBase:{self->_materialGroupNameBase, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v16 = *MEMORY[0x277D85DE8];
  [(NCAuxiliaryOptionsView *)self _updateTextAttributesForOptionsSummaryLabel];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_auxiliaryOptionButtons;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        _preferredFontForOptionButton = [(NCAuxiliaryOptionsView *)self _preferredFontForOptionButton];
        [v8 setFont:_preferredFontForOptionButton];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  self->_widthForCachedLayoutInfo = 0.0;
  [(NCAuxiliaryOptionsView *)self setNeedsLayout];
  return 1;
}

- (void)_setDefaultAttributes
{
  _defaultTextColor = [(NCAuxiliaryOptionsView *)self _defaultTextColor];
  auxiliaryOptionsTextColor = self->_auxiliaryOptionsTextColor;
  self->_auxiliaryOptionsTextColor = _defaultTextColor;

  v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
  auxiliaryOptionsBackgroundColor = self->_auxiliaryOptionsBackgroundColor;
  self->_auxiliaryOptionsBackgroundColor = v5;

  v7 = *MEMORY[0x277CDA5D8];

  objc_storeStrong(&self->_auxiliaryOptionsBackgroundCompositingFilter, v7);
}

- (id)_preferredFontForAuxiliaryOptionsSummaryTextLabel
{
  fontProvider = [(NCAuxiliaryOptionsView *)self fontProvider];
  v3 = [fontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:8];

  return v3;
}

- (void)_updateTextAttributesForOptionsSummaryLabel
{
  optionsSummaryLabel = self->_optionsSummaryLabel;
  if (optionsSummaryLabel)
  {
    _preferredFontForAuxiliaryOptionsSummaryTextLabel = [(NCAuxiliaryOptionsView *)self _preferredFontForAuxiliaryOptionsSummaryTextLabel];
    [(UILabel *)optionsSummaryLabel setFont:_preferredFontForAuxiliaryOptionsSummaryTextLabel];
  }
}

- (void)_configureAuxiliaryOptionsSummaryTextLabelIfNecessary
{
  if (!self->_optionsSummaryLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    optionsSummaryLabel = self->_optionsSummaryLabel;
    self->_optionsSummaryLabel = v3;

    [(UILabel *)self->_optionsSummaryLabel setTextColor:self->_auxiliaryOptionsTextColor];
    [(UILabel *)self->_optionsSummaryLabel setNumberOfLines:0];
    [(UILabel *)self->_optionsSummaryLabel setTextAlignment:1];
    [(NCAuxiliaryOptionsView *)self _updateTextAttributesForOptionsSummaryLabel];
    v5 = self->_optionsSummaryLabel;

    [(NCAuxiliaryOptionsView *)self addSubview:v5];
  }
}

- (id)_preferredFontForOptionButton
{
  fontProvider = [(NCAuxiliaryOptionsView *)self fontProvider];
  v3 = [fontProvider preferredFontForTextStyle:*MEMORY[0x277D769D0] hiFontStyle:8];

  return v3;
}

- (id)_newOptionsButton
{
  v3 = objc_alloc_init(MEMORY[0x277D3D320]);
  _preferredFontForOptionButton = [(NCAuxiliaryOptionsView *)self _preferredFontForOptionButton];
  [v3 setFont:_preferredFontForOptionButton];

  [v3 _setContinuousCornerRadius:9.5];
  [(NCAuxiliaryOptionsView *)self addSubview:v3];
  return v3;
}

- (void)_configureOverlayIfNecessary
{
  if (!self->_overlayView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    overlayView = self->_overlayView;
    self->_overlayView = v3;

    v5 = self->_overlayView;
    [(NCAuxiliaryOptionsView *)self bounds];
    [(UIView *)v5 setFrame:?];
    [(UIView *)self->_overlayView setAutoresizingMask:18];
    [(UIView *)self->_overlayView setBackgroundColor:self->_auxiliaryOptionsBackgroundColor];
    layer = [(UIView *)self->_overlayView layer];
    [layer setCompositingFilter:self->_auxiliaryOptionsBackgroundCompositingFilter];

    v7 = self->_overlayView;

    [(NCAuxiliaryOptionsView *)self insertSubview:v7 atIndex:0];
  }
}

- (void)_calculateOptionsSummaryLabelLayoutInfoForBoundsSize:(CGSize)size
{
  if (self->_optionsSummaryLabel)
  {
    if (size.width != self->_widthForCachedLayoutInfo)
    {
      self->_widthForCachedLayoutInfo = size.width;
      optionsSummaryLabel = self->_optionsSummaryLabel;
      BSRectWithSize();
      self->_cachedSummaryLabelNumberOfLines = [(UILabel *)optionsSummaryLabel unui_numberOfLinesInFrame:0 maximum:self->_drawingContext drawingContext:?];
    }
  }
}

- (CGRect)_optionsSummaryMeasuringFrameForBounds:(CGRect)bounds
{
  [(NCAuxiliaryOptionsView *)self _optionsSummaryWidthForBounds:?];
  [(UILabel *)self->_optionsSummaryLabel unui_measuringHeightWithNumberOfLines:[(NCAuxiliaryOptionsView *)self _summaryLabelNumberOfLinesForBoundsSize:?]];
  BSRectWithSize();
  UIRectCenteredXInRectScale();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_layoutOptionsSummaryLabel
{
  if (self->_optionsSummaryLabel)
  {
    [(NCAuxiliaryOptionsView *)self bounds];
    [(NCAuxiliaryOptionsView *)self _optionsSummaryMeasuringFrameForBounds:?];
    x = v9.origin.x;
    y = v9.origin.y;
    width = v9.size.width;
    height = v9.size.height;
    [(UILabel *)self->_optionsSummaryLabel unui_drawingHeightWithNumberOfLines:[(NCAuxiliaryOptionsView *)self _summaryLabelNumberOfLinesForBoundsSize:CGRectGetWidth(v9), 1.79769313e308]];
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    CGRectGetWidth(v10);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    optionsSummaryLabel = self->_optionsSummaryLabel;

    [(UILabel *)optionsSummaryLabel setFrame:?];
  }
}

- (double)_optionsButtonWidthForBounds:(CGRect)bounds auxiliaryOptionButtonsCount:(unint64_t)count
{
  if (count)
  {
    return (CGRectGetWidth(bounds) + -28.0 + (count - 1) * -10.0) / count;
  }

  else
  {
    return 0.0;
  }
}

- (void)_layoutOptionsButtons
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_auxiliaryOptionButtons count])
  {
    [(NCAuxiliaryOptionsView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(NCAuxiliaryOptionsView *)self _optionsButtonWidthForBounds:[(NSArray *)self->_auxiliaryOptionButtons count] auxiliaryOptionButtonsCount:v3, v5, v7, v9];
    v12 = v11;
    if (self->_optionsSummaryLabel)
    {
      [(NCAuxiliaryOptionsView *)self _optionsSummaryMeasuringFrameForBounds:v4, v6, v8, v10];
      v13 = CGRectGetMaxY(v35) + 18.0;
    }

    else
    {
      v13 = 18.0;
    }

    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x4010000000;
    v30[3] = &unk_21E979265;
    v31 = 0u;
    v32 = 0u;
    v36.origin.x = v4;
    v36.origin.y = v6;
    v36.size.width = v8;
    v36.size.height = v10;
    MaxY = CGRectGetMaxY(v36);
    *&v31 = 0x402C000000000000;
    *(&v31 + 1) = v13;
    *&v32 = v12;
    *(&v32 + 1) = MaxY - v13 + -14.0;
    v15 = _NCMainScreenScale();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__NCAuxiliaryOptionsView__layoutOptionsButtons__block_invoke;
    aBlock[3] = &unk_278370D48;
    aBlock[4] = v30;
    *&aBlock[5] = v15;
    v16 = _Block_copy(aBlock);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v18 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

    if (v18)
    {
      v19 = [(NSArray *)self->_auxiliaryOptionButtons count];
      if (v19 - 1 >= 0)
      {
        do
        {
          v20 = [(NSArray *)self->_auxiliaryOptionButtons objectAtIndex:--v19];
          v16[2](v16, v20);
        }

        while (v19 > 0);
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v21 = self->_auxiliaryOptionButtons;
      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v22)
      {
        v23 = *v26;
        do
        {
          v24 = 0;
          do
          {
            if (*v26 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v16[2](v16, *(*(&v25 + 1) + 8 * v24++));
          }

          while (v22 != v24);
          v22 = [(NSArray *)v21 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v22);
      }
    }

    _Block_object_dispose(v30, 8);
  }
}

CGFloat __47__NCAuxiliaryOptionsView__layoutOptionsButtons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  UIRectIntegralWithScale();
  [v3 setFrame:?];

  result = CGRectGetMaxX(*(*(*(a1 + 32) + 8) + 32)) + 10.0;
  *(*(*(a1 + 32) + 8) + 32) = result;
  return result;
}

@end