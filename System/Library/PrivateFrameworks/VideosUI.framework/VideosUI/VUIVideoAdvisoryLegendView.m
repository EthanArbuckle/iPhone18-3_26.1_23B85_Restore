@interface VUIVideoAdvisoryLegendView
- (CGSize)legendDescriptionSizeThatFits:(CGSize)a3;
- (CGSize)legendNameSizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)legendDescription;
- (NSString)legendName;
- (VUIVideoAdvisoryLegendView)initWithLayout:(id)a3;
- (void)layoutSubviews;
- (void)setLegendDescription:(id)a3;
- (void)setLegendName:(id)a3;
@end

@implementation VUIVideoAdvisoryLegendView

- (VUIVideoAdvisoryLegendView)initWithLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIVideoAdvisoryLegendView;
  v6 = [(VUIVideoAdvisoryLegendView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layout, a3);
  }

  return v7;
}

- (CGSize)legendNameSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(VUIVideoAdvisoryLegendView *)self bounds];
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    height = v7;
    width = v6;
  }

  v8 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
  [v8 sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  v13 = [(VUIVideoAdvisoryLegendView *)self layout];
  v14 = v13;
  v15 = v12;
  if (v10 > v12)
  {
    [v13 legendNamePadding];
    v17 = v16;
    [v14 legendNamePadding];
    v15 = v10 + v17 + v18;
  }

  v19 = v15;
  v20 = v12;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)legendDescriptionSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(VUIVideoAdvisoryLegendView *)self bounds];
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    height = v7;
    width = v6;
  }

  v8 = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  [v8 sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  v13 = [(VUIVideoAdvisoryLegendView *)self layout];
  v14 = v13;
  v15 = v12;
  if (v10 > v12)
  {
    [v13 legendNamePadding];
    v15 = v10 + v16;
  }

  v17 = v15;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(VUIVideoAdvisoryLegendView *)self legendNameSizeThatFits:?];
  v7 = v6;
  v8 = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  [v8 sizeThatFits:{width, height}];
  v10 = v9;

  if (v7 >= v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = VUIVideoAdvisoryLegendView;
  [(VUIVideoAdvisoryLegendView *)&v41 layoutSubviews];
  v3 = [(VUIVideoAdvisoryLegendView *)self layout];
  [(VUIVideoAdvisoryLegendView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(VUIVideoAdvisoryLegendView *)self effectiveUserInterfaceLayoutDirection];
  [(VUIVideoAdvisoryLegendView *)self legendNameSizeThatFits:v5, v7];
  v10 = v9;
  [v3 legendNameMinWidth];
  v12 = v11;
  v13 = v5 - v7;
  v14 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];

  if (v14)
  {
    if (v8 == 1)
    {
      v15 = v5 - v7;
    }

    else
    {
      v15 = 0.0;
    }

    if (v10 >= v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v12;
    }

    if (v16 >= v7)
    {
      v17 = v16;
    }

    else
    {
      v17 = v7;
    }

    v18 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
    [v18 setFrame:{v15, 0.0, v17, v7}];
  }

  v19 = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  [v19 sizeThatFits:{v5, v7}];
  v21 = v20;
  v23 = v22;

  if (v8 == 1)
  {
    [v3 legendsMargin];
    v25 = v21 + v24;
    v26 = [v3 descriptionLayout];
    [v26 margin];
    v28 = v13 - (v25 + v27);
  }

  else
  {
    v26 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
    if (v26)
    {
      v29 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
      [v29 frame];
      v31 = v30;
      [v3 legendsMargin];
      v33 = v31 + v32;
      v34 = [v3 descriptionLayout];
      [v34 margin];
      v28 = v33 + v35 + 0.0;
    }

    else
    {
      v28 = 0.0;
    }
  }

  v36 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
  if (v36)
  {
    v37 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
    [v37 frame];
    v39 = (v38 - v23) * 0.5;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  [v40 setFrame:{v28, v39, v21, v23}];
}

- (NSString)legendName
{
  v2 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setLegendName:(id)a3
{
  v15 = a3;
  if ([v15 length])
  {
    v4 = [(VUIVideoAdvisoryLegendView *)self layout];
    v5 = [v4 legendLayout];
    v6 = [VUILabel labelWithString:v15 textLayout:v5 existingLabel:0];

    v7 = [(VUIVideoAdvisoryLegendView *)self layout];
    v8 = [v7 legendLayout];
    [v8 margin];
    [v6 setPadding:?];

    v9 = [(VUIVideoAdvisoryLegendView *)self layout];
    v10 = [v9 legendBackgroundColor];
    [v6 setBackgroundColor:v10];

    [v6 setClipsToBounds:1];
    v11 = [v6 layer];
    v12 = [(VUIVideoAdvisoryLegendView *)self layout];
    [v12 legendCornerRadius];
    [v11 setCornerRadius:?];

    v13 = [v6 layer];
    [v13 setCompositingFilter:*MEMORY[0x1E6979D98]];

    v14 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
    [v14 removeFromSuperview];

    [(VUIVideoAdvisoryLegendView *)self setLegendNameLabel:v6];
    [(VUIVideoAdvisoryLegendView *)self addSubview:v6];
    [(VUIVideoAdvisoryLegendView *)self setNeedsLayout];
  }
}

- (NSString)legendDescription
{
  v2 = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setLegendDescription:(id)a3
{
  v8 = a3;
  if ([v8 length])
  {
    v4 = [(VUIVideoAdvisoryLegendView *)self layout];
    v5 = [v4 descriptionLayout];
    v6 = [VUILabel labelWithString:v8 textLayout:v5 existingLabel:0];

    v7 = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
    [v7 removeFromSuperview];

    [(VUIVideoAdvisoryLegendView *)self setLegendDescriptionLabel:v6];
    [(VUIVideoAdvisoryLegendView *)self addSubview:v6];
    [(VUIVideoAdvisoryLegendView *)self setNeedsLayout];
  }
}

@end