@interface NCToggleControlPair
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCToggleControlPair)initWithLeadingToggleControl:(id)control trailingToggleControl:(id)toggleControl;
- (NSString)clearAllText;
- (double)_effectiveInterControlPadding;
- (double)_effectiveValueForMinValue:(double)value withFont:(id)font;
- (void)_handleTouchUpInside:(id)inside withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setClearAllText:(id)text;
- (void)setLeadingControlExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setMaterialGroupNameBase:(id)base;
@end

@implementation NCToggleControlPair

- (NCToggleControlPair)initWithLeadingToggleControl:(id)control trailingToggleControl:(id)toggleControl
{
  v13[2] = *MEMORY[0x277D85DE8];
  controlCopy = control;
  toggleControlCopy = toggleControl;
  v12.receiver = self;
  v12.super_class = NCToggleControlPair;
  v8 = [(NCToggleControlPair *)&v12 init];
  if (v8)
  {
    v13[0] = controlCopy;
    v13[1] = toggleControlCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    toggleControls = v8->_toggleControls;
    v8->_toggleControls = v9;

    [toggleControlCopy setExpanded:{objc_msgSend(controlCopy, "isExpanded") ^ 1}];
    [(NCToggleControlPair *)v8 addSubview:controlCopy];
    [(NCToggleControlPair *)v8 addSubview:toggleControlCopy];
    [controlCopy _setManagingPair:v8];
    [toggleControlCopy _setManagingPair:v8];
  }

  return v8;
}

- (void)setLeadingControlExpanded:(BOOL)expanded animated:(BOOL)animated
{
  expandedCopy = expanded;
  v6 = [(NCToggleControlPair *)self _leadingToggleControl:expanded];
  _trailingToggleControl = [(NCToggleControlPair *)self _trailingToggleControl];
  if ([v6 isExpanded] != expandedCopy)
  {
    v8 = objc_opt_class();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__NCToggleControlPair_setLeadingControlExpanded_animated___block_invoke;
    v9[3] = &unk_278371F30;
    v10 = v6;
    v12 = expandedCopy;
    v11 = _trailingToggleControl;
    [v8 performWithDefaultExpansionAnimation:v9 completion:0];
  }
}

uint64_t __58__NCToggleControlPair_setLeadingControlExpanded_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExpanded:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 48) & 1) == 0;

  return [v2 setExpanded:v3];
}

- (void)setClearAllText:(id)text
{
  textCopy = text;
  _leadingToggleControl = [(NCToggleControlPair *)self _leadingToggleControl];
  [_leadingToggleControl setClearAllText:textCopy];

  _trailingToggleControl = [(NCToggleControlPair *)self _trailingToggleControl];
  [_trailingToggleControl setClearAllText:textCopy];
}

- (NSString)clearAllText
{
  _leadingToggleControl = [(NCToggleControlPair *)self _leadingToggleControl];
  clearAllText = [_leadingToggleControl clearAllText];
  v5 = clearAllText;
  if (clearAllText)
  {
    clearAllText2 = clearAllText;
  }

  else
  {
    _trailingToggleControl = [(NCToggleControlPair *)self _trailingToggleControl];
    clearAllText2 = [_trailingToggleControl clearAllText];
  }

  return clearAllText2;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(NCToggleControlPair *)self _leadingToggleControl:fits.width];
  if (v4)
  {
    _leadingToggleControl = [(NCToggleControlPair *)self _leadingToggleControl];
    [_leadingToggleControl _cachedEffectiveMaxUnexpandedSize];
  }

  else
  {
    [NCToggleControl effectiveHeight:[(NCToggleControlPair *)self adjustsFontForContentSizeCategory]];
  }

  _trailingToggleControl = [(NCToggleControlPair *)self _trailingToggleControl];
  if (_trailingToggleControl)
  {
    _trailingToggleControl2 = [(NCToggleControlPair *)self _trailingToggleControl];
    [_trailingToggleControl2 _cachedEffectiveMaxExpandedSize];
  }

  else
  {
    _MaxToggleControlSize(1, [(NCToggleControlPair *)self adjustsFontForContentSizeCategory]);
  }

  [(NCToggleControlPair *)self _effectiveInterControlPadding];
  _NCMainScreenScale();

  UISizeRoundToScale();
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = NCToggleControlPair;
  [(NCToggleControlPair *)&v35 layoutSubviews];
  [(NCToggleControlPair *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(NCToggleControlPair *)self _shouldReverseLayoutDirection];
  _leadingToggleControl = [(NCToggleControlPair *)self _leadingToggleControl];
  [_leadingToggleControl _effectiveExpandedSize];
  BSRectWithSize();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v32 = v4;
  if (_shouldReverseLayoutDirection)
  {
    v36.origin.x = v4;
    v36.origin.y = v6;
    v36.size.width = v8;
    v36.size.height = v10;
    Width = CGRectGetWidth(v36);
    v37.origin.x = v14;
    v37.origin.y = v16;
    v37.size.width = v18;
    v37.size.height = v20;
    v14 = Width - CGRectGetWidth(v37);
  }

  [_leadingToggleControl setFrame:{v14, v16, v18, v20, *&v32, *&v6}];
  _trailingToggleControl = [(NCToggleControlPair *)self _trailingToggleControl];
  [_trailingToggleControl _effectiveExpandedSize];
  BSRectWithSize();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if ((_shouldReverseLayoutDirection & 1) == 0)
  {
    v38.origin.x = v33;
    v38.origin.y = v34;
    v38.size.width = v8;
    v38.size.height = v10;
    v31 = CGRectGetWidth(v38);
    v39.origin.x = v24;
    v39.origin.y = v26;
    v39.size.width = v28;
    v39.size.height = v30;
    v24 = v31 - CGRectGetWidth(v39);
  }

  [_trailingToggleControl setFrame:{v24, v26, v28, v30}];
}

- (BOOL)adjustsFontForContentSizeCategory
{
  _leadingToggleControl = [(NCToggleControlPair *)self _leadingToggleControl];
  if ([_leadingToggleControl adjustsFontForContentSizeCategory])
  {
    _trailingToggleControl = [(NCToggleControlPair *)self _trailingToggleControl];
    adjustsFontForContentSizeCategory = [_trailingToggleControl adjustsFontForContentSizeCategory];
  }

  else
  {
    adjustsFontForContentSizeCategory = 0;
  }

  return adjustsFontForContentSizeCategory;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  v16 = *MEMORY[0x277D85DE8];
  adjustsFontForContentSizeCategory = [(NCToggleControlPair *)self adjustsFontForContentSizeCategory];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_toggleControls;
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

        [*(*(&v11 + 1) + 8 * v10++) setAdjustsFontForContentSizeCategory:{categoryCopy, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (adjustsFontForContentSizeCategory != [(NCToggleControlPair *)self adjustsFontForContentSizeCategory])
  {
    [(NCToggleControlPair *)self adjustForContentSizeCategoryChange];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_toggleControls;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v10 + 1) + 8 * i) adjustForContentSizeCategoryChange];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);

    if (v6)
    {
      [(NCToggleControlPair *)self setNeedsLayout];
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (void)setMaterialGroupNameBase:(id)base
{
  v17 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  if (![(NSString *)self->_materialGroupNameBase isEqualToString:baseCopy])
  {
    v5 = [baseCopy copy];
    materialGroupNameBase = self->_materialGroupNameBase;
    self->_materialGroupNameBase = v5;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_toggleControls;
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

          [*(*(&v12 + 1) + 8 * v11++) setMaterialGroupNameBase:{self->_materialGroupNameBase, v12}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (double)_effectiveValueForMinValue:(double)value withFont:(id)font
{
  [font _scaledValueForValue:?];
  if (result <= value)
  {
    return value;
  }

  return result;
}

- (double)_effectiveInterControlPadding
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

  if (IsAX)
  {
    v6 = 3.0;
  }

  else
  {
    v6 = 8.0;
  }

  _leadingToggleControl = [(NCToggleControlPair *)self _leadingToggleControl];
  v8 = [objc_opt_class() _labelFont:{-[NCToggleControlPair adjustsFontForContentSizeCategory](self, "adjustsFontForContentSizeCategory")}];
  [(NCToggleControlPair *)self _effectiveValueForMinValue:v8 withFont:v6];
  v10 = v9;

  return v10;
}

- (void)_handleTouchUpInside:(id)inside withEvent:(id)event
{
  insideCopy = inside;
  if (([insideCopy _wasExpandedPriorToControlEvent] & 1) == 0)
  {
    _leadingToggleControl = [(NCToggleControlPair *)self _leadingToggleControl];
    v6 = _leadingToggleControl == insideCopy;

    [(NCToggleControlPair *)self setLeadingControlExpanded:v6 animated:1];
  }
}

@end