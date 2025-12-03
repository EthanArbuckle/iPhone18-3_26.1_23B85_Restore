@interface _TVHeaderColumnView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setLabelViews:(id)views;
@end

@implementation _TVHeaderColumnView

- (void)setLabelViews:(id)views
{
  v19 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  if (![(NSArray *)self->_labelViews isEqualToArray:viewsCopy])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_labelViews;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (([viewsCopy containsObject:v10] & 1) == 0)
          {
            [v10 removeFromSuperview];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [viewsCopy copy];
    labelViews = self->_labelViews;
    self->_labelViews = v11;

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37___TVHeaderColumnView_setLabelViews___block_invoke;
    v13[3] = &unk_279D6E820;
    v13[4] = self;
    [viewsCopy enumerateObjectsUsingBlock:v13];
  }

  [(_TVHeaderColumnView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  labelViews = [(_TVHeaderColumnView *)self labelViews];
  v6 = [labelViews countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(labelViews);
        }

        [*(*(&v18 + 1) + 8 * i) tv_sizeThatFits:{width, 0.0}];
        v9 = v9 + v11;
      }

      v7 = [labelViews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  [(_TVHeaderColumnView *)self lineSpacing];
  v13 = v12;
  labelViews2 = [(_TVHeaderColumnView *)self labelViews];
  v15 = [labelViews2 count];

  v16 = v9 + v13 * (v15 - 1);
  v17 = width;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = _TVHeaderColumnView;
  [(_TVHeaderColumnView *)&v18 layoutSubviews];
  [(_TVHeaderColumnView *)self bounds];
  Width = CGRectGetWidth(v21);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  labelViews = [(_TVHeaderColumnView *)self labelViews];
  v5 = [labelViews countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(labelViews);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 tv_sizeThatFits:{Width, 0.0}];
        v12 = v11;
        [v10 setFrame:{0.0, v8, Width, v11}];
        [(_TVHeaderColumnView *)self lineSpacing];
        v8 = v8 + v12 + v13;
      }

      v6 = [labelViews countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }
}

@end