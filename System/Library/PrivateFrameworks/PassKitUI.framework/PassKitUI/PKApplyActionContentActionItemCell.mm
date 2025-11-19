@interface PKApplyActionContentActionItemCell
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_resetState;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActionItem:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation PKApplyActionContentActionItemCell

- (void)setActionItem:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v33 = a3;
  objc_storeStrong(&self->_actionItem, a3);
  [(PKApplyActionContentActionItemCell *)self _resetState];
  v5 = [(PKApplyActionContentActionItemCell *)self contentView];
  v6 = [(PKApplyActionContentActionItem *)self->_actionItem contextPrimaryActionIdentifier];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = PKUIChevronImage();
    v9 = [v7 initWithImage:v8];

    v10 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v9 setTintColor:v10];

    disclosureView = self->_disclosureView;
    self->_disclosureView = v9;
    v12 = v9;

    [v5 addSubview:self->_disclosureView];
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = self;
  obj = [(PKApplyActionContentActionItem *)self->_actionItem items];
  v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v38 = *v42;
    v37 = *MEMORY[0x1E69DDD80];
    v15 = *MEMORY[0x1E69DDC38];
    v35 = *MEMORY[0x1E69DDCF8];
    v36 = *MEMORY[0x1E69B9D20];
    v16 = *MEMORY[0x1E69B9CC8];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v20 = [v18 title];
        [v19 setText:v20];

        [v19 setNumberOfLines:0];
        v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v19 setTextColor:v21];

        v22 = PKFontForDefaultDesign(v37, v15, 0, 0);
        [v19 setFont:v22];

        [v19 setAccessibilityIdentifier:v36];
        [v5 addSubview:v19];
        v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v24 = [v18 subtitle];
        [v23 setText:v24];

        [v23 setNumberOfLines:0];
        v25 = [MEMORY[0x1E69DC888] labelColor];
        [v23 setTextColor:v25];

        v26 = PKFontForDefaultDesign(v35, v15, 0, 0);
        [v23 setFont:v26];

        [v23 pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
        [v23 setAccessibilityIdentifier:v16];
        [v5 addSubview:v23];
        [v40 addObject:v19];
        [v39 addObject:v23];
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  v27 = [v40 copy];
  titleLabels = v32->_titleLabels;
  v32->_titleLabels = v27;

  v29 = [v39 copy];
  subtitleLabels = v32->_subtitleLabels;
  v32->_subtitleLabels = v29;

  v31 = [(PKApplyActionContentActionItem *)v32->_actionItem contextPrimaryActionIdentifier];
  [(PKApplyActionContentActionItemCell *)v32 setAccessibilityIdentifier:v31];

  [(PKApplyActionContentActionItemCell *)v32 setNeedsLayout];
}

- (void)setHighlighted:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PKApplyActionContentActionItemCell;
  [(PKApplyActionContentActionItemCell *)&v10 setHighlighted:?];
  if (a3)
  {
    [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    [objc_opt_class() backgroundColor];
  }
  v5 = ;
  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKApplyActionContentActionItemCell_setHighlighted___block_invoke;
  v8[3] = &unk_1E8010A10;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 _animateUsingDefaultTimingWithOptions:0 animations:v8 completion:0];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKApplyActionContentActionItemCell;
  [(PKApplyActionContentActionItemCell *)&v4 layoutSubviews];
  v3 = [(PKApplyActionContentActionItemCell *)self contentView];
  [v3 bounds];
  [(PKApplyActionContentActionItemCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKApplyActionContentActionItemCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = PKTableViewCellTextInset();
  v11 = x + v10;
  v12 = y + 12.0;
  v13 = width - (v10 + PKTableViewCellTextInset());
  v14 = height + -24.0;
  if ([(PKApplyActionContentActionItemCell *)self _shouldReverseLayoutDirection])
  {
    v15 = CGRectMinXEdge;
  }

  else
  {
    v15 = CGRectMaxXEdge;
  }

  remainder.origin.x = v11;
  remainder.origin.y = y + 12.0;
  remainder.size.width = v13;
  remainder.size.height = height + -24.0;
  disclosureView = self->_disclosureView;
  if (disclosureView)
  {
    [(UIImageView *)disclosureView sizeThatFits:v13, 3.40282347e38];
    v18 = v17;
  }

  else
  {
    v18 = *MEMORY[0x1E695F060];
  }

  memset(&v50, 0, sizeof(v50));
  memset(&v49, 0, sizeof(v49));
  if (v18 <= 0.0)
  {
    v19 = v13;
  }

  else
  {
    v19 = v13 - v18 + -15.0;
  }

  v43 = *(MEMORY[0x1E695F058] + 16);
  v44 = *MEMORY[0x1E695F058];
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v43;
  if (v18 > 0.0)
  {
    v52.origin.x = v11;
    v52.origin.y = v12;
    v52.size.width = v13;
    v52.size.height = v14;
    CGRectDivide(v52, &slice, &remainder, v18, v15);
    CGRectDivide(remainder, &v50, &remainder, 15.0, v15);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    slice.origin.x = v20;
    slice.origin.y = v21;
    slice.size.width = v22;
    slice.size.height = v23;
  }

  if (![(NSArray *)self->_titleLabels count])
  {
    v40 = 24.0;
    if (a4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v24 = 0;
  v25 = 0.0;
  do
  {
    v26 = [(NSArray *)self->_titleLabels objectAtIndexedSubscript:v24];
    v46.origin = v44;
    v46.size = v43;
    [v26 sizeThatFits:{v19, 3.40282347e38}];
    v28 = v27;
    v29 = [(NSArray *)self->_subtitleLabels objectAtIndexedSubscript:v24];
    v45.origin = v44;
    v45.size = v43;
    [v29 sizeThatFits:{v19, 3.40282347e38}];
    v31 = v30;
    CGRectDivide(remainder, &v46, &remainder, v28, CGRectMinYEdge);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v46.origin.x = v32;
    v46.origin.y = v33;
    v46.size.width = v34;
    v46.size.height = v35;
    CGRectDivide(remainder, &v45, &remainder, v31, CGRectMinYEdge);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v45.origin.x = v36;
    v45.origin.y = v37;
    v45.size.width = v38;
    v45.size.height = v39;
    if (!a4)
    {
      [v26 setFrame:{v46.origin.x, v46.origin.y, v46.size.width, v46.size.height}];
      [v29 setFrame:{v45.origin.x, v45.origin.y, v45.size.width, v45.size.height}];
    }

    v25 = v25 + v28 + v31;
    if (++v24 < [(NSArray *)self->_titleLabels count])
    {
      CGRectDivide(remainder, &v49, &remainder, 8.0, CGRectMinYEdge);
      v25 = v25 + 8.0;
    }
  }

  while (v24 < [(NSArray *)self->_titleLabels count]);
  v40 = v25 + 24.0;
  if (!a4)
  {
LABEL_20:
    [(UIImageView *)self->_disclosureView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

LABEL_21:
  v41 = width;
  v42 = v40;
  result.height = v42;
  result.width = v41;
  return result;
}

- (void)_resetState
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_titleLabels;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_subtitleLabels;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v12++) removeFromSuperview];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }

  [(UIImageView *)self->_disclosureView removeFromSuperview];
  disclosureView = self->_disclosureView;
  self->_disclosureView = 0;

  titleLabels = self->_titleLabels;
  self->_titleLabels = 0;

  subtitleLabels = self->_subtitleLabels;
  self->_subtitleLabels = 0;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKApplyActionContentActionItemCell;
  [(PKApplyActionContentActionItemCell *)&v3 prepareForReuse];
  [(PKApplyActionContentActionItemCell *)self _resetState];
}

@end