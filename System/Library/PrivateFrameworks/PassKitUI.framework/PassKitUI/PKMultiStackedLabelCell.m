@interface PKMultiStackedLabelCell
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSources:(id)a3;
@end

@implementation PKMultiStackedLabelCell

- (void)setSources:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, a3);
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

    v27 = self;
    v11 = [(PKMultiStackedLabelCell *)self contentView];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v5;
    obj = v5;
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
          v19 = [v17 text];
          v20 = [v17 icon];
          v21 = [(PKIconTextLabel *)v18 initWithText:v19 icon:v20];

          v22 = [v17 textColor];
          [(PKIconTextLabel *)v21 setTextColor:v22];

          v23 = [v17 font];
          [(PKIconTextLabel *)v21 setTextFont:v23];

          [v11 addSubview:v21];
          [v12 addObject:v21];

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v14);
    }

    v24 = [v12 copy];
    v25 = *(&v27->super.super.super.super.super.super.isa + v26);
    *(&v27->super.super.super.super.super.super.isa + v26) = v24;

    [(PKMultiStackedLabelCell *)v27 setNeedsLayout];
    v5 = v28;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKMultiStackedLabelCell;
  [(PKMultiStackedLabelCell *)&v4 layoutSubviews];
  v3 = [(PKMultiStackedLabelCell *)self contentView];
  [v3 bounds];
  [(PKMultiStackedLabelCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKMultiStackedLabelCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
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
      if (!a4)
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