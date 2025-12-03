@interface PKMultiStackedLabelCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSources:(id)sources;
@end

@implementation PKMultiStackedLabelCell

- (void)setSources:(id)sources
{
  v40 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, sources);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = 872;
    v6 = self->_textLabels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        v10 = 0;
        do
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v34 + 1) + 8 * v10++) removeFromSuperview];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }

    selfCopy = self;
    contentView = [(PKMultiStackedLabelCell *)self contentView];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = sourcesCopy;
    obj = sourcesCopy;
    v13 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v30 + 1) + 8 * v16);
          v18 = [PKIconTextLabel alloc];
          text = [v17 text];
          icon = [v17 icon];
          v21 = [(PKIconTextLabel *)v18 initWithText:text icon:icon];

          textColor = [v17 textColor];
          [(PKIconTextLabel *)v21 setTextColor:textColor];

          font = [v17 font];
          [(PKIconTextLabel *)v21 setTextFont:font];

          [contentView addSubview:v21];
          [v12 addObject:v21];

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v14);
    }

    v24 = [v12 copy];
    v25 = *(&selfCopy->super.super.super.super.super.super.isa + v26);
    *(&selfCopy->super.super.super.super.super.super.isa + v26) = v24;

    [(PKMultiStackedLabelCell *)selfCopy setNeedsLayout];
    sourcesCopy = v28;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKMultiStackedLabelCell;
  [(PKMultiStackedLabelCell *)&v4 layoutSubviews];
  contentView = [(PKMultiStackedLabelCell *)self contentView];
  [contentView bounds];
  [(PKMultiStackedLabelCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKMultiStackedLabelCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = PKTableViewCellTextInset();
  v11 = x + v10;
  v12 = width - (v10 + PKTableViewCellTextInset());
  [(PKMultiStackedLabelCell *)self _shouldReverseLayoutDirection];
  v28.size.width = v12;
  v28.size.height = height + -30.0;
  if ([(NSArray *)self->_textLabels count:*&v11])
  {
    v13 = 0;
    memset(&slice, 0, sizeof(slice));
    v14 = 0.0;
    do
    {
      v15 = [(NSArray *)self->_textLabels objectAtIndexedSubscript:v13];
      [v15 sizeThatFits:{v28.size.width, v28.size.height}];
      CGRectDivide(v28, &slice, &v28, v16, CGRectMinYEdge);
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      CGRectDivide(v28, &slice, &v28, self->_paddingBetweenRows, CGRectMinYEdge);
      paddingBetweenRows = self->_paddingBetweenRows;
      if (!layout)
      {
        [v15 setFrame:{v18, v20, v22, v24}];
      }

      v14 = v14 + v24 + paddingBetweenRows;

      ++v13;
    }

    while (v13 < [(NSArray *)self->_textLabels count]);
    v26 = v14 + 30.0;
  }

  else
  {
    v26 = 30.0;
  }

  v27 = width;
  result.height = v26;
  result.width = v27;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKMultiStackedLabelCell;
  [(PKMultiStackedLabelCell *)&v4 prepareForReuse];
  textLabels = self->_textLabels;
  self->_textLabels = 0;
}

@end