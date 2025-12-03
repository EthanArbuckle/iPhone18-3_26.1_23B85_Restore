@interface SKUIQuicklinksView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIQuicklinksView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setCollectionView:(id)view;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setTitle:(id)title;
@end

@implementation SKUIQuicklinksView

- (SKUIQuicklinksView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIQuicklinksView initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIQuicklinksView;
  height = [(SKUIQuicklinksView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = height->_borderView;
    height->_borderView = v9;

    v11 = height->_borderView;
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v11 setBackgroundColor:v12];

    [(SKUIQuicklinksView *)height addSubview:height->_borderView];
  }

  return height;
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  collectionView = self->_collectionView;
  v7 = viewCopy;
  if (collectionView != viewCopy)
  {
    [(UIView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, view);
    if (self->_collectionView)
    {
      [(SKUIQuicklinksView *)self addSubview:?];
    }
  }
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  backgroundColor = [schemeCopy backgroundColor];
  v5 = backgroundColor;
  if (backgroundColor)
  {
    whiteColor = backgroundColor;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v7 = whiteColor;

  [(SKUIQuicklinksView *)self setBackgroundColor:v7];
  [(UIView *)self->_collectionView setBackgroundColor:v7];
  secondaryTextColor = [schemeCopy secondaryTextColor];
  titleColor = self->_titleColor;
  self->_titleColor = secondaryTextColor;

  if (self->_titleColor)
  {
    titleLabel = self->_titleLabel;
LABEL_7:
    [(UILabel *)titleLabel setTextColor:?];
    goto LABEL_8;
  }

  primaryTextColor = [schemeCopy primaryTextColor];
  v12 = self->_titleColor;
  self->_titleColor = primaryTextColor;

  titleLabel = self->_titleLabel;
  if (self->_titleColor)
  {
    goto LABEL_7;
  }

  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)titleLabel setTextColor:blackColor];

LABEL_8:
  primaryTextColor2 = [schemeCopy primaryTextColor];
  borderView = self->_borderView;
  if (primaryTextColor2)
  {
    [(UIView *)borderView setBackgroundColor:primaryTextColor2];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)borderView setBackgroundColor:v15];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  if (text != titleCopy && ([text isEqualToString:titleCopy] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        backgroundColor = [(SKUIQuicklinksView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_titleLabel;
        if (self->_titleColor)
        {
          [(UILabel *)self->_titleLabel setTextColor:?];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v12 setTextColor:blackColor];
        }

        [(SKUIQuicklinksView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v13 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIQuicklinksView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIQuicklinksView *)self bounds];
  v4 = v3;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v7 = v6;
    [(UILabel *)self->_titleLabel setFrame:15.0, 15.0, v4 + -15.0 + -15.0];
    v14.origin.x = 15.0;
    v14.origin.y = 15.0;
    v14.size.width = v4 + -15.0 + -15.0;
    v14.size.height = v7;
    v8 = CGRectGetMaxY(v14) + 11.0;
  }

  else
  {
    v8 = 15.0;
  }

  [(UIView *)self->_collectionView frame];
  [(UIView *)self->_collectionView setFrame:0.0, v8, v4];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = 1.0 / v10;

  borderView = self->_borderView;

  [(UIView *)borderView setFrame:0.0, v8 - v11, v4, v11];
}

- (void)setBackgroundColor:(id)color
{
  collectionView = self->_collectionView;
  colorCopy = color;
  [(UIView *)collectionView setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIQuicklinksView;
  [(SKUIQuicklinksView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame:fits.width];
    v7 = v6 + 30.0;
  }

  else
  {
    v7 = 30.0;
  }

  collectionView = self->_collectionView;
  if (collectionView)
  {
    [(UIView *)collectionView frame];
    v7 = v7 + v9;
  }

  if (self->_titleLabel && self->_collectionView)
  {
    v7 = v7 + 11.0;
  }

  v10 = width;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIQuicklinksView initWithFrame:]";
}

@end