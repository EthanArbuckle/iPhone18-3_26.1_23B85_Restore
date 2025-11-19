@interface NCToggleControlPair
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCToggleControlPair)initWithLeadingToggleControl:(id)a3 trailingToggleControl:(id)a4;
- (NSString)clearAllText;
- (double)_effectiveInterControlPadding;
- (double)_effectiveValueForMinValue:(double)a3 withFont:(id)a4;
- (void)_handleTouchUpInside:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setClearAllText:(id)a3;
- (void)setLeadingControlExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setMaterialGroupNameBase:(id)a3;
@end

@implementation NCToggleControlPair

- (NCToggleControlPair)initWithLeadingToggleControl:(id)a3 trailingToggleControl:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NCToggleControlPair;
  v8 = [(NCToggleControlPair *)&v12 init];
  if (v8)
  {
    v13[0] = v6;
    v13[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    toggleControls = v8->_toggleControls;
    v8->_toggleControls = v9;

    [v7 setExpanded:{objc_msgSend(v6, "isExpanded") ^ 1}];
    [(NCToggleControlPair *)v8 addSubview:v6];
    [(NCToggleControlPair *)v8 addSubview:v7];
    [v6 _setManagingPair:v8];
    [v7 _setManagingPair:v8];
  }

  return v8;
}

- (void)setLeadingControlExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(NCToggleControlPair *)self _leadingToggleControl:a3];
  v7 = [(NCToggleControlPair *)self _trailingToggleControl];
  if ([v6 isExpanded] != v4)
  {
    v8 = objc_opt_class();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__NCToggleControlPair_setLeadingControlExpanded_animated___block_invoke;
    v9[3] = &unk_278371F30;
    v10 = v6;
    v12 = v4;
    v11 = v7;
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

- (void)setClearAllText:(id)a3
{
  v4 = a3;
  v5 = [(NCToggleControlPair *)self _leadingToggleControl];
  [v5 setClearAllText:v4];

  v6 = [(NCToggleControlPair *)self _trailingToggleControl];
  [v6 setClearAllText:v4];
}

- (NSString)clearAllText
{
  v3 = [(NCToggleControlPair *)self _leadingToggleControl];
  v4 = [v3 clearAllText];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(NCToggleControlPair *)self _trailingToggleControl];
    v6 = [v7 clearAllText];
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(NCToggleControlPair *)self _leadingToggleControl:a3.width];
  if (v4)
  {
    v5 = [(NCToggleControlPair *)self _leadingToggleControl];
    [v5 _cachedEffectiveMaxUnexpandedSize];
  }

  else
  {
    [NCToggleControl effectiveHeight:[(NCToggleControlPair *)self adjustsFontForContentSizeCategory]];
  }

  v6 = [(NCToggleControlPair *)self _trailingToggleControl];
  if (v6)
  {
    v7 = [(NCToggleControlPair *)self _trailingToggleControl];
    [v7 _cachedEffectiveMaxExpandedSize];
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
  v11 = [(NCToggleControlPair *)self _shouldReverseLayoutDirection];
  v12 = [(NCToggleControlPair *)self _leadingToggleControl];
  [v12 _effectiveExpandedSize];
  BSRectWithSize();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v32 = v4;
  if (v11)
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

  [v12 setFrame:{v14, v16, v18, v20, *&v32, *&v6}];
  v22 = [(NCToggleControlPair *)self _trailingToggleControl];
  [v22 _effectiveExpandedSize];
  BSRectWithSize();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if ((v11 & 1) == 0)
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

  [v22 setFrame:{v24, v26, v28, v30}];
}

- (BOOL)adjustsFontForContentSizeCategory
{
  v3 = [(NCToggleControlPair *)self _leadingToggleControl];
  if ([v3 adjustsFontForContentSizeCategory])
  {
    v4 = [(NCToggleControlPair *)self _trailingToggleControl];
    v5 = [v4 adjustsFontForContentSizeCategory];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(NCToggleControlPair *)self adjustsFontForContentSizeCategory];
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

        [*(*(&v11 + 1) + 8 * v10++) setAdjustsFontForContentSizeCategory:{v3, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (v5 != [(NCToggleControlPair *)self adjustsFontForContentSizeCategory])
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

- (void)setMaterialGroupNameBase:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_materialGroupNameBase isEqualToString:v4])
  {
    v5 = [v4 copy];
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

- (double)_effectiveValueForMinValue:(double)a3 withFont:(id)a4
{
  [a4 _scaledValueForValue:?];
  if (result <= a3)
  {
    return a3;
  }

  return result;
}

- (double)_effectiveInterControlPadding
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v4);

  if (IsAX)
  {
    v6 = 3.0;
  }

  else
  {
    v6 = 8.0;
  }

  v7 = [(NCToggleControlPair *)self _leadingToggleControl];
  v8 = [objc_opt_class() _labelFont:{-[NCToggleControlPair adjustsFontForContentSizeCategory](self, "adjustsFontForContentSizeCategory")}];
  [(NCToggleControlPair *)self _effectiveValueForMinValue:v8 withFont:v6];
  v10 = v9;

  return v10;
}

- (void)_handleTouchUpInside:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  if (([v7 _wasExpandedPriorToControlEvent] & 1) == 0)
  {
    v5 = [(NCToggleControlPair *)self _leadingToggleControl];
    v6 = v5 == v7;

    [(NCToggleControlPair *)self setLeadingControlExpanded:v6 animated:1];
  }
}

@end