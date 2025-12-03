@interface VUIVideoAdvisoryLegendView
- (CGSize)legendDescriptionSizeThatFits:(CGSize)fits;
- (CGSize)legendNameSizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)legendDescription;
- (NSString)legendName;
- (VUIVideoAdvisoryLegendView)initWithLayout:(id)layout;
- (void)layoutSubviews;
- (void)setLegendDescription:(id)description;
- (void)setLegendName:(id)name;
@end

@implementation VUIVideoAdvisoryLegendView

- (VUIVideoAdvisoryLegendView)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = VUIVideoAdvisoryLegendView;
  v6 = [(VUIVideoAdvisoryLegendView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layout, layout);
  }

  return v7;
}

- (CGSize)legendNameSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(VUIVideoAdvisoryLegendView *)self bounds];
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    height = v7;
    width = v6;
  }

  legendNameLabel = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
  [legendNameLabel sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  layout = [(VUIVideoAdvisoryLegendView *)self layout];
  v14 = layout;
  v15 = v12;
  if (v10 > v12)
  {
    [layout legendNamePadding];
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

- (CGSize)legendDescriptionSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(VUIVideoAdvisoryLegendView *)self bounds];
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    height = v7;
    width = v6;
  }

  legendDescriptionLabel = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  [legendDescriptionLabel sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  layout = [(VUIVideoAdvisoryLegendView *)self layout];
  v14 = layout;
  v15 = v12;
  if (v10 > v12)
  {
    [layout legendNamePadding];
    v15 = v10 + v16;
  }

  v17 = v15;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(VUIVideoAdvisoryLegendView *)self legendNameSizeThatFits:?];
  v7 = v6;
  legendDescriptionLabel = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  [legendDescriptionLabel sizeThatFits:{width, height}];
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
  layout = [(VUIVideoAdvisoryLegendView *)self layout];
  [(VUIVideoAdvisoryLegendView *)self bounds];
  v5 = v4;
  v7 = v6;
  effectiveUserInterfaceLayoutDirection = [(VUIVideoAdvisoryLegendView *)self effectiveUserInterfaceLayoutDirection];
  [(VUIVideoAdvisoryLegendView *)self legendNameSizeThatFits:v5, v7];
  v10 = v9;
  [layout legendNameMinWidth];
  v12 = v11;
  v13 = v5 - v7;
  legendNameLabel = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];

  if (legendNameLabel)
  {
    if (effectiveUserInterfaceLayoutDirection == 1)
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

    legendNameLabel2 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
    [legendNameLabel2 setFrame:{v15, 0.0, v17, v7}];
  }

  legendDescriptionLabel = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  [legendDescriptionLabel sizeThatFits:{v5, v7}];
  v21 = v20;
  v23 = v22;

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    [layout legendsMargin];
    v25 = v21 + v24;
    descriptionLayout = [layout descriptionLayout];
    [descriptionLayout margin];
    v28 = v13 - (v25 + v27);
  }

  else
  {
    descriptionLayout = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
    if (descriptionLayout)
    {
      legendNameLabel3 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
      [legendNameLabel3 frame];
      v31 = v30;
      [layout legendsMargin];
      v33 = v31 + v32;
      descriptionLayout2 = [layout descriptionLayout];
      [descriptionLayout2 margin];
      v28 = v33 + v35 + 0.0;
    }

    else
    {
      v28 = 0.0;
    }
  }

  legendNameLabel4 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
  if (legendNameLabel4)
  {
    legendNameLabel5 = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
    [legendNameLabel5 frame];
    v39 = (v38 - v23) * 0.5;
  }

  else
  {
    v39 = 0.0;
  }

  legendDescriptionLabel2 = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  [legendDescriptionLabel2 setFrame:{v28, v39, v21, v23}];
}

- (NSString)legendName
{
  legendNameLabel = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
  text = [legendNameLabel text];

  return text;
}

- (void)setLegendName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    layout = [(VUIVideoAdvisoryLegendView *)self layout];
    legendLayout = [layout legendLayout];
    v6 = [VUILabel labelWithString:nameCopy textLayout:legendLayout existingLabel:0];

    layout2 = [(VUIVideoAdvisoryLegendView *)self layout];
    legendLayout2 = [layout2 legendLayout];
    [legendLayout2 margin];
    [v6 setPadding:?];

    layout3 = [(VUIVideoAdvisoryLegendView *)self layout];
    legendBackgroundColor = [layout3 legendBackgroundColor];
    [v6 setBackgroundColor:legendBackgroundColor];

    [v6 setClipsToBounds:1];
    layer = [v6 layer];
    layout4 = [(VUIVideoAdvisoryLegendView *)self layout];
    [layout4 legendCornerRadius];
    [layer setCornerRadius:?];

    layer2 = [v6 layer];
    [layer2 setCompositingFilter:*MEMORY[0x1E6979D98]];

    legendNameLabel = [(VUIVideoAdvisoryLegendView *)self legendNameLabel];
    [legendNameLabel removeFromSuperview];

    [(VUIVideoAdvisoryLegendView *)self setLegendNameLabel:v6];
    [(VUIVideoAdvisoryLegendView *)self addSubview:v6];
    [(VUIVideoAdvisoryLegendView *)self setNeedsLayout];
  }
}

- (NSString)legendDescription
{
  legendDescriptionLabel = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
  text = [legendDescriptionLabel text];

  return text;
}

- (void)setLegendDescription:(id)description
{
  descriptionCopy = description;
  if ([descriptionCopy length])
  {
    layout = [(VUIVideoAdvisoryLegendView *)self layout];
    descriptionLayout = [layout descriptionLayout];
    v6 = [VUILabel labelWithString:descriptionCopy textLayout:descriptionLayout existingLabel:0];

    legendDescriptionLabel = [(VUIVideoAdvisoryLegendView *)self legendDescriptionLabel];
    [legendDescriptionLabel removeFromSuperview];

    [(VUIVideoAdvisoryLegendView *)self setLegendDescriptionLabel:v6];
    [(VUIVideoAdvisoryLegendView *)self addSubview:v6];
    [(VUIVideoAdvisoryLegendView *)self setNeedsLayout];
  }
}

@end