@interface SKUIBrowseItemCell
- (SKUIBrowseItemCell)initWithFrame:(CGRect)frame;
- (void)_reloadHighlightState;
- (void)layoutSubviews;
- (void)setDecorationImage:(id)image;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setShowTopBorder:(BOOL)border;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation SKUIBrowseItemCell

- (SKUIBrowseItemCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseItemCell initWithFrame:];
  }

  v24.receiver = self;
  v24.super_class = SKUIBrowseItemCell;
  height = [(SKUIBrowseItemCell *)&v24 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = height->_titleLabel;
    height->_titleLabel = v9;

    v11 = height->_titleLabel;
    v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)height->_titleLabel setNumberOfLines:1];
    [(SKUIBrowseItemCell *)height addSubview:height->_titleLabel];
    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = height->_subtitleLabel;
    height->_subtitleLabel = v13;

    v15 = height->_subtitleLabel;
    v16 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    [(UILabel *)v15 setFont:v16];

    [(UILabel *)height->_subtitleLabel setNumberOfLines:1];
    v17 = height->_subtitleLabel;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v17 setTextColor:v18];

    [(SKUIBrowseItemCell *)height addSubview:height->_subtitleLabel];
    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = height->_borderView;
    height->_borderView = v19;

    v21 = height->_borderView;
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v21 setBackgroundColor:v22];

    [(SKUIBrowseItemCell *)height addSubview:height->_borderView];
    [(SKUIBrowseItemCell *)height setSemanticContentAttribute:storeSemanticContentAttribute()];
  }

  return height;
}

- (void)setDecorationImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    objc_storeStrong(&self->_decorationImage, image);
    decorationImageView = self->_decorationImageView;
    if (decorationImageView)
    {
      [(UIImageView *)decorationImageView setImage:self->_decorationImage];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_decorationImage];
      v9 = self->_decorationImageView;
      self->_decorationImageView = v8;

      [(SKUIBrowseItemCell *)self addSubview:self->_decorationImageView];
    }
  }

  else
  {
    decorationImage = self->_decorationImage;
    self->_decorationImage = 0;

    [(UIImageView *)self->_decorationImageView removeFromSuperview];
    v7 = self->_decorationImageView;
    self->_decorationImageView = 0;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  v5 = [titleCopy isEqualToString:text];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:titleCopy];
    [(SKUIBrowseItemCell *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  text = [(UILabel *)self->_subtitleLabel text];
  v5 = [subtitleCopy isEqualToString:text];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
    [(SKUIBrowseItemCell *)self setNeedsLayout];
  }
}

- (void)setShowTopBorder:(BOOL)border
{
  self->_showTopBorder = border;
  topBorderView = self->_topBorderView;
  if (border)
  {
    if (!topBorderView)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75D18]);
      v6 = self->_topBorderView;
      self->_topBorderView = v5;

      v7 = self->_topBorderView;
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
      [(UIView *)v7 setBackgroundColor:v8];

      v9 = self->_topBorderView;

      [(SKUIBrowseItemCell *)self addSubview:v9];
    }
  }

  else if (topBorderView)
  {
    [(UIView *)topBorderView removeFromSuperview];
    v10 = self->_topBorderView;
    self->_topBorderView = 0;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SKUIBrowseItemCell;
  [(SKUIBrowseItemCell *)&v4 setHighlighted:highlighted];
  [(SKUIBrowseItemCell *)self _reloadHighlightState];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SKUIBrowseItemCell;
  [(SKUIBrowseItemCell *)&v4 setSelected:selected];
  [(SKUIBrowseItemCell *)self _reloadHighlightState];
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = SKUIBrowseItemCell;
  [(SKUIBrowseItemCell *)&v37 layoutSubviews];
  [(SKUIBrowseItemCell *)self bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v7 = CGRectGetMaxX(v38) + -15.0;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  decorationImageView = self->_decorationImageView;
  if (decorationImageView)
  {
    [(UIImageView *)decorationImageView frame];
    v11 = v10;
    v13 = v12;
    v14 = v7 - v10;
    v15 = y + (height - v12) * 0.5;
    v16 = self->_decorationImageView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v14, v15, v10, v12, x, y, width, height);
    [(UIImageView *)v16 setFrame:?];
    v39.origin.x = v14;
    v39.origin.y = v15;
    v39.size.width = v11;
    v39.size.height = v13;
    v7 = CGRectGetMinX(v39) + -10.0;
  }

  if (ShouldReverseLayoutDirection)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  [(UILabel *)self->_subtitleLabel sizeToFit];
  [(UILabel *)self->_subtitleLabel frame];
  v19 = v18;
  v21 = v20;
  v22 = v7 - v18;
  v23 = y + (height - v20) * 0.5;
  subtitleLabel = self->_subtitleLabel;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v22, v23, v18, v20, x, y, width, height);
  [(UILabel *)subtitleLabel setFrame:?];
  [(UILabel *)self->_subtitleLabel setTextAlignment:v17];
  v40.origin.x = v22;
  v40.origin.y = v23;
  v40.size.width = v19;
  v40.size.height = v21;
  v25 = CGRectGetMinX(v40) + -10.0;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel frame];
  titleLabel = self->_titleLabel;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(x + 15.0, y + (height - v26) * 0.5, v25 - x + -15.0, v26, x, y, width, height);
  [(UILabel *)titleLabel setFrame:?];
  [(UILabel *)self->_titleLabel setTextAlignment:v17];
  [(UIView *)self->_borderView frame];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v30 = 1.0 / v29;

  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MaxY = CGRectGetMaxY(v41);
  borderView = self->_borderView;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, MaxY - v30, width + -15.0, v30, x, y, width, height);
  [(UIView *)borderView setFrame:?];
  [(UIView *)self->_topBorderView frame];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v35 = 1.0 / v34;

  topBorderView = self->_topBorderView;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, 0.0, width + -15.0, v35, x, y, width, height);
  [(UIView *)topBorderView setFrame:?];
}

- (void)_reloadHighlightState
{
  hasBlueBackgroundWhenSelected = self->_hasBlueBackgroundWhenSelected;
  isHighlighted = [(SKUIBrowseItemCell *)self isHighlighted];
  v5 = isHighlighted;
  if (hasBlueBackgroundWhenSelected)
  {
    if ((isHighlighted & 1) != 0 || [(SKUIBrowseItemCell *)self isSelected])
    {
      titleLabel = self->_titleLabel;
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)titleLabel setTextColor:whiteColor];

      subtitleLabel = self->_subtitleLabel;
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)subtitleLabel setTextColor:whiteColor2];

      whiteColor3 = [MEMORY[0x277D75348] colorWithRed:0.298039216 green:0.631372549 blue:1.0 alpha:1.0];
      goto LABEL_9;
    }

    v12 = self->_titleLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v12 setTextColor:blackColor];

    v14 = self->_subtitleLabel;
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v14 setTextColor:v15];

    v11 = MEMORY[0x277D75348];
  }

  else
  {
    v11 = MEMORY[0x277D75348];
    if (v5)
    {
      whiteColor3 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
      goto LABEL_9;
    }
  }

  whiteColor3 = [v11 whiteColor];
LABEL_9:
  v16 = whiteColor3;
  [(SKUIBrowseItemCell *)self setBackgroundColor:whiteColor3];

  borderView = self->_borderView;
  if (([(SKUIBrowseItemCell *)self isHighlighted]& 1) != 0)
  {
    isSelected = 1;
  }

  else
  {
    isSelected = [(SKUIBrowseItemCell *)self isSelected];
  }

  [(UIView *)borderView setHidden:isSelected];
  topBorderView = self->_topBorderView;
  if (([(SKUIBrowseItemCell *)self isHighlighted]& 1) != 0)
  {
    isSelected2 = 1;
  }

  else
  {
    isSelected2 = [(SKUIBrowseItemCell *)self isSelected];
  }

  [(UIView *)topBorderView setHidden:isSelected2];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrowseItemCell initWithFrame:]";
}

@end