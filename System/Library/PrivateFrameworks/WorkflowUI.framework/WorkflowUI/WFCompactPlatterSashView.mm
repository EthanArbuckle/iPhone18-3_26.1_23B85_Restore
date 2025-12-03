@interface WFCompactPlatterSashView
+ (id)font;
- (CGSize)sizeThatFits:(CGSize)fits;
- (WFCompactPlatterSashView)initWithFrame:(CGRect)frame;
- (double)contentBaseline;
- (void)layoutSubviews;
- (void)setAppearanceProvider:(id)provider;
- (void)setIcon:(id)icon;
- (void)setTitle:(id)title;
@end

@implementation WFCompactPlatterSashView

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  objc_storeStrong(&self->_icon, icon);
  iconView = self->_iconView;
  if (!iconView)
  {
    v6 = [objc_alloc(MEMORY[0x277D7D520]) initWithIcon:iconCopy size:{20.0, 20.0}];
    v7 = self->_iconView;
    self->_iconView = v6;

    [(WFCompactPlatterSashView *)self addSubview:self->_iconView];
    [(WFCompactPlatterSashView *)self setNeedsLayout];
    iconView = self->_iconView;
  }

  [(WFIconHostingView *)iconView setIcon:iconCopy];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v4 = [titleCopy copy];
  title = self->_title;
  self->_title = v4;

  [(UILabel *)self->_label setText:titleCopy];
}

- (void)setAppearanceProvider:(id)provider
{
  objc_storeStrong(&self->_appearanceProvider, provider);
  providerCopy = provider;
  label = [(WFCompactPlatterSashView *)self label];
  iconView = [(WFCompactPlatterSashView *)self iconView];
  [providerCopy configurePlatterSashView:label iconView:iconView];
}

- (double)contentBaseline
{
  [(WFIconHostingView *)self->_iconView iconSize];
  v3 = v2 + 10.0;
  font = [objc_opt_class() font];
  [font _scaledValueForValue:15.0];
  v6 = v5 + 10.0;

  if (v3 >= v6)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(WFIconHostingView *)self->_iconView iconSize:fits.width];
  [(UILabel *)self->_label sizeThatFits:width - (v5 + 18.0), 1.79769313e308];
  v7 = v6;
  [(WFIconHostingView *)self->_iconView iconSize];
  if (v8 + 18.0 >= v7)
  {
    v9 = v8 + 18.0;
  }

  else
  {
    v9 = v7;
  }

  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = WFCompactPlatterSashView;
  [(WFCompactPlatterSashView *)&v25 layoutSubviews];
  [(WFCompactPlatterSashView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(WFIconHostingView *)self->_iconView iconSize];
  rect = v11;
  [(WFIconHostingView *)self->_iconView iconSize];
  v13 = v12;
  v14 = 22.0;
  if ([(WFCompactPlatterSashView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    Width = CGRectGetWidth(v26);
    [(WFIconHostingView *)self->_iconView iconSize];
    v14 = Width - v16 + -18.0;
  }

  [(UILabel *)self->_label intrinsicContentSize];
  v18 = v17;
  v27.origin.y = 18.0;
  v27.origin.x = v14;
  v27.size.width = rect;
  v27.size.height = v13;
  MaxX = CGRectGetMaxX(v27);
  if ([(WFCompactPlatterSashView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    v20 = CGRectGetWidth(v28) - v18;
    [(WFIconHostingView *)self->_iconView iconSize];
    v22 = v20 - v21 + -18.0 + -8.0;
  }

  else
  {
    v22 = MaxX + 8.0;
  }

  [(WFIconHostingView *)self->_iconView setFrame:v14];
  [(UIVisualEffectView *)self->_visualEffectView setFrame:v22, (24.0 - v13) * -0.5 + 18.0, v18, 24.0];
  label = self->_label;
  [(UIVisualEffectView *)self->_visualEffectView bounds];
  [(UILabel *)label setFrame:?];
}

- (WFCompactPlatterSashView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = WFCompactPlatterSashView;
  v3 = [(WFCompactPlatterSashView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(WFCompactPlatterSashView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v9 = [labelColor colorWithAlphaComponent:0.5];
    [(UILabel *)v7 setTextColor:v9];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v7 setBackgroundColor:clearColor];

    font = [objc_opt_class() font];
    [(UILabel *)v7 setFont:font];

    label = v4->_label;
    v4->_label = v7;
    v13 = v7;

    v14 = [MEMORY[0x277D75210] effectWithStyle:8];
    v15 = [MEMORY[0x277D75D00] effectForBlurEffect:v14 style:1];
    v16 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v15];
    contentView = [(UIVisualEffectView *)v16 contentView];
    [contentView addSubview:v13];

    visualEffectView = v4->_visualEffectView;
    v4->_visualEffectView = v16;
    v19 = v16;

    [(WFCompactPlatterSashView *)v4 addSubview:v19];
    v20 = v4;
  }

  return v4;
}

+ (id)font
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277D74430];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v16[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v4 = *MEMORY[0x277D769D0];
  v5 = *MEMORY[0x277D74380];
  v13[0] = *MEMORY[0x277D74378];
  v13[1] = v5;
  v14[0] = v4;
  v14[1] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v7 = [objc_alloc(MEMORY[0x277D74310]) initWithFontAttributes:v6];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:15.0];
  v10 = round(v9);

  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:{fmin(fmax(v10, 15.0), 22.0)}];

  return v11;
}

@end