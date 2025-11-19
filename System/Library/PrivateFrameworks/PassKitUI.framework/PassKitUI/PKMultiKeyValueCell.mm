@interface PKMultiKeyValueCell
- (BOOL)_shouldStackLabelsWithBounds:(CGRect)a3;
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSources:(id)a3;
@end

@implementation PKMultiKeyValueCell

- (void)setSources:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, a3);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v6 = self->_titleLabels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v53 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v8);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = 880;
    v11 = self->_subtitleLabels;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v49 + 1) + 8 * j) removeFromSuperview];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v13);
    }

    v35 = self;
    v44 = [(PKMultiKeyValueCell *)self contentView];
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = v5;
    obj = v5;
    v43 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v43)
    {
      v40 = *v46;
      v16 = *MEMORY[0x1E69DDCF8];
      v17 = *MEMORY[0x1E69DDC38];
      v39 = *MEMORY[0x1E69B9D20];
      v38 = *MEMORY[0x1E69B96F8];
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v45 + 1) + 8 * k);
          if ([v19 isBold])
          {
            v20 = 2;
          }

          else
          {
            v20 = 0;
          }

          v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
          v22 = [v19 title];
          [v21 setText:v22];

          [v21 setNumberOfLines:0];
          v23 = [MEMORY[0x1E69DC888] labelColor];
          [v21 setTextColor:v23];

          v24 = PKFontForDefaultDesign(v16, v17, v20, 0);
          [v21 setFont:v24];

          [v21 setAccessibilityIdentifier:v39];
          [v44 addSubview:v21];
          v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
          v26 = [v19 subtitle];
          [v25 setText:v26];

          [v25 setNumberOfLines:0];
          v27 = [v19 subtitleTextColor];
          if (v27)
          {
            [v25 setTextColor:v27];
          }

          else
          {
            v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
            [v25 setTextColor:v28];
          }

          v29 = PKFontForDefaultDesign(v16, v17, v20, 0);
          [v25 setFont:v29];

          [v25 setAccessibilityIdentifier:v38];
          [v44 addSubview:v25];
          [v42 addObject:v21];
          [v41 addObject:v25];
        }

        v43 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v43);
    }

    v30 = [v42 copy];
    titleLabels = v35->_titleLabels;
    v35->_titleLabels = v30;

    v32 = [v41 copy];
    v33 = *(&v35->super.super.super.super.super.super.isa + v34);
    *(&v35->super.super.super.super.super.super.isa + v34) = v32;

    [(PKMultiKeyValueCell *)v35 setNeedsLayout];
    v5 = v36;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKMultiKeyValueCell;
  [(PKMultiKeyValueCell *)&v4 layoutSubviews];
  v3 = [(PKMultiKeyValueCell *)self contentView];
  [v3 bounds];
  [(PKMultiKeyValueCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKMultiKeyValueCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  v7 = a3.origin.x + 16.0;
  v8 = a3.origin.y + 16.0;
  v9 = a3.size.height + -32.0;
  v10 = [(PKMultiKeyValueCell *)self _shouldReverseLayoutDirection];
  v11 = [(PKMultiKeyValueCell *)self _shouldStackLabelsWithBounds:v7, v8, width + -32.0, v9];
  v12 = v10 == 0;
  if (v10)
  {
    v13 = CGRectMaxXEdge;
  }

  else
  {
    v13 = CGRectMinXEdge;
  }

  if (v12)
  {
    v14 = CGRectMaxXEdge;
  }

  else
  {
    v14 = CGRectMinXEdge;
  }

  remainder.origin.x = v7;
  remainder.origin.y = v8;
  remainder.size.width = width + -32.0;
  remainder.size.height = v9;
  if ([(NSArray *)self->_titleLabels count])
  {
    v52 = width;
    v15 = 0;
    memset(&slice, 0, sizeof(slice));
    v16 = 0.0;
    do
    {
      v54 = v16;
      v17 = [(NSArray *)self->_titleLabels objectAtIndexedSubscript:v15];
      [v17 sizeThatFits:{remainder.size.width, remainder.size.height}];
      v19 = v18;
      v21 = v20;
      v22 = [(NSArray *)self->_subtitleLabels objectAtIndexedSubscript:v15];
      [v22 sizeThatFits:{remainder.size.width, remainder.size.height}];
      v24 = v23;
      v26 = v25;
      if (v11)
      {
        CGRectDivide(remainder, &slice, &remainder, v21, CGRectMinYEdge);
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        v53 = v27;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        CGRectDivide(remainder, &slice, &remainder, v26, CGRectMinYEdge);
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        CGRectDivide(remainder, &slice, &remainder, 5.0, CGRectMinYEdge);
        v21 = v33 + v41;
      }

      else
      {
        memset(&v56, 0, sizeof(v56));
        CGRectDivide(remainder, &v56, &remainder, v21, CGRectMinYEdge);
        memset(&v55, 0, sizeof(v55));
        CGRectDivide(v56, &v55, &v56, fmin(v56.size.width, v19), v13);
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        v53 = v42;
        v29 = v43;
        v31 = v44;
        v33 = v45;
        CGRectDivide(v56, &v55, &v56, fmin(v56.size.width, v24), v14);
        PKContentAlignmentMake();
        PKSizeAlignedInRect();
        v35 = v46;
        v37 = v47;
        v39 = v48;
        v41 = v49;
        CGRectDivide(remainder, &v56, &remainder, 5.0, CGRectMinYEdge);
      }

      v16 = v54 + v21;
      if (++v15 < [(NSArray *)self->_titleLabels count])
      {
        v16 = v16 + 5.0;
      }

      if (!a4)
      {
        [v17 setFrame:{v53, v29, v31, v33}];
        [v22 setFrame:{v35, v37, v39, v41}];
      }
    }

    while (v15 < [(NSArray *)self->_titleLabels count]);
    v50 = v16 + 32.0;
    width = v52;
  }

  else
  {
    v50 = 32.0;
  }

  v51 = width;
  result.height = v50;
  result.width = v51;
  return result;
}

- (BOOL)_shouldStackLabelsWithBounds:(CGRect)a3
{
  width = a3.size.width;
  if (![(NSArray *)self->_titleLabels count:a3.origin.x])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = [(NSArray *)self->_titleLabels objectAtIndexedSubscript:v5];
    v7 = [(NSArray *)self->_subtitleLabels objectAtIndexedSubscript:v5];
    [v6 sizeThatFits:{width, 1.79769313e308}];
    v9 = v8;
    [v7 sizeThatFits:{width, 1.79769313e308}];
    v11 = v9 + v10 + 8.0;

    v12 = width < v11;
    if (width < v11)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(NSArray *)self->_titleLabels count]);
  return v12;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PKMultiKeyValueCell;
  [(PKMultiKeyValueCell *)&v5 prepareForReuse];
  titleLabels = self->_titleLabels;
  self->_titleLabels = 0;

  subtitleLabels = self->_subtitleLabels;
  self->_subtitleLabels = 0;
}

@end