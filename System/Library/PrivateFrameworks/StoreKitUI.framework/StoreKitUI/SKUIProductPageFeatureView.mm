@interface SKUIProductPageFeatureView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setIcon:(id)icon;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation SKUIProductPageFeatureView

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  iconView = self->_iconView;
  v11 = iconCopy;
  if (iconCopy)
  {
    if (!iconView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D755E8]);
      v7 = self->_iconView;
      self->_iconView = v6;

      v8 = self->_iconView;
      backgroundColor = [(SKUIProductPageFeatureView *)self backgroundColor];
      [(UIImageView *)v8 setBackgroundColor:backgroundColor];

      [(SKUIProductPageFeatureView *)self addSubview:self->_iconView];
      iconCopy = v11;
      iconView = self->_iconView;
    }

    [(UIImageView *)iconView setImage:iconCopy];
    [(UIImageView *)self->_iconView sizeToFit];
  }

  else
  {
    [(UIImageView *)iconView removeFromSuperview];
    v10 = self->_iconView;
    self->_iconView = 0;
  }

  [(SKUIProductPageFeatureView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  v28[2] = *MEMORY[0x277D85DE8];
  subtitleCopy = subtitle;
  subtitle = [(SKUIProductPageFeatureView *)self subtitle];
  v6 = subtitle;
  if (subtitle != subtitleCopy && ([subtitle isEqualToString:subtitleCopy] & 1) == 0)
  {
    v7 = [subtitleCopy length];
    subtitleLabel = self->_subtitleLabel;
    if (v7)
    {
      if (!subtitleLabel)
      {
        v9 = objc_alloc_init(MEMORY[0x277D756B8]);
        v10 = self->_subtitleLabel;
        self->_subtitleLabel = v9;

        v11 = self->_subtitleLabel;
        backgroundColor = [(SKUIProductPageFeatureView *)self backgroundColor];
        [(UILabel *)v11 setBackgroundColor:backgroundColor];

        v13 = self->_subtitleLabel;
        v14 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v13 setFont:v14];

        [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
        v15 = self->_subtitleLabel;
        primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
        if (primaryTextColor)
        {
          [(UILabel *)v15 setTextColor:primaryTextColor];
        }

        else
        {
          v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
          [(UILabel *)v15 setTextColor:v18];
        }

        [(SKUIProductPageFeatureView *)self addSubview:self->_subtitleLabel];
      }

      v19 = objc_alloc_init(MEMORY[0x277D74240]);
      [v19 setMaximumLineHeight:16.0];
      [v19 setMinimumLineHeight:16.0];
      v20 = *MEMORY[0x277D74118];
      v28[0] = v19;
      v21 = *MEMORY[0x277D740C0];
      v27[0] = v20;
      v27[1] = v21;
      primaryTextColor2 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
      v23 = primaryTextColor2;
      if (!primaryTextColor2)
      {
        v23 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      }

      v28[1] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      if (!primaryTextColor2)
      {
      }

      v25 = self->_subtitleLabel;
      v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:subtitleCopy attributes:v24];
      [(UILabel *)v25 setAttributedText:v26];
    }

    else
    {
      [(UILabel *)subtitleLabel removeFromSuperview];
      v17 = self->_subtitleLabel;
      self->_subtitleLabel = 0;
    }

    [(SKUIProductPageFeatureView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SKUIProductPageFeatureView *)self title];
  if (title != titleCopy && ([title isEqualToString:titleCopy] & 1) == 0)
  {
    v5 = [titleCopy length];
    titleLabel = self->_titleLabel;
    if (v5)
    {
      if (!titleLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_titleLabel;
        self->_titleLabel = v7;

        v9 = self->_titleLabel;
        backgroundColor = [(SKUIProductPageFeatureView *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:backgroundColor];

        v11 = self->_titleLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_titleLabel;
        secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          secondaryTextColor2 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
          v16 = SKUIColorWithAlpha(secondaryTextColor2, 0.7);
          [(UILabel *)v13 setTextColor:v16];
        }

        else
        {
          secondaryTextColor2 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v13 setTextColor:secondaryTextColor2];
        }

        [(SKUIProductPageFeatureView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:titleCopy];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v17 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIProductPageFeatureView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIProductPageFeatureView *)self bounds];
  v4 = v3;
  iconView = self->_iconView;
  v6 = 0.0;
  v7 = 0.0;
  if (iconView)
  {
    [(UIImageView *)iconView frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIImageView *)self->_iconView setFrame:?];
    v22.origin.y = 2.0;
    v22.origin.x = v9;
    v22.size.width = v11;
    v22.size.height = v13;
    v7 = CGRectGetMaxX(v22) + 10.0;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v16 = v15;
    [(UILabel *)self->_titleLabel setFrame:v7, 0.0, v4 - v7];
    v23.origin.y = 0.0;
    v23.origin.x = v7;
    v23.size.width = v4 - v7;
    v23.size.height = v16;
    v6 = CGRectGetMaxY(v23) + -2.0 + 5.0 + -2.0;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    [(UILabel *)subtitleLabel frame];
    [(UILabel *)self->_subtitleLabel sizeThatFits:v4 - v7, 1.79769313e308];
    v20 = self->_subtitleLabel;

    [(UILabel *)v20 setFrame:v7, v6, v18, v19];
  }
}

- (void)setBackgroundColor:(id)color
{
  iconView = self->_iconView;
  colorCopy = color;
  [(UIImageView *)iconView setBackgroundColor:colorCopy];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIProductPageFeatureView;
  [(SKUIProductPageFeatureView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  iconView = self->_iconView;
  v6 = fits.width;
  if (iconView)
  {
    [(UIImageView *)iconView frame];
    v6 = width - (v7 + 10.0);
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v10 = v9 + -2.0 + 5.0;
  }

  else
  {
    v10 = 5.0;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    [(UILabel *)subtitleLabel sizeThatFits:v6, 1.79769313e308];
    v13 = v12 + -2.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v10 + v13;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

@end