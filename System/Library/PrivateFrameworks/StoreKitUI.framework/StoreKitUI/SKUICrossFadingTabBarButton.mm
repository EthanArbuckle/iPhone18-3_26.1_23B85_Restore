@interface SKUICrossFadingTabBarButton
- (SKUICrossFadingTabBarButton)initWithFrame:(CGRect)frame;
- (void)_positionBadge;
- (void)_setBadgeValue:(id)value;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setSelectedImage:(id)image;
- (void)setSelectionProgress:(double)progress;
- (void)setTitle:(id)title;
- (void)tintColorDidChange;
@end

@implementation SKUICrossFadingTabBarButton

- (SKUICrossFadingTabBarButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICrossFadingTabBarButton initWithFrame:];
  }

  v27.receiver = self;
  v27.super_class = SKUICrossFadingTabBarButton;
  height = [(SKUICrossFadingTabBarButton *)&v27 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    standardTitleLabel = height->_standardTitleLabel;
    height->_standardTitleLabel = v9;

    v11 = height->_standardTitleLabel;
    v12 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)height->_standardTitleLabel setOpaque:0];
    v13 = height->_standardTitleLabel;
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.57254902 alpha:1.0];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)height->_standardTitleLabel setBackgroundColor:0];
    [(SKUICrossFadingTabBarButton *)height addSubview:height->_standardTitleLabel];
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    selectedTitleLabel = height->_selectedTitleLabel;
    height->_selectedTitleLabel = v15;

    [(UILabel *)height->_selectedTitleLabel setAlpha:0.0];
    v17 = height->_selectedTitleLabel;
    v18 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)height->_selectedTitleLabel setOpaque:0];
    v19 = height->_selectedTitleLabel;
    tintColor = [(SKUICrossFadingTabBarButton *)height tintColor];
    [(UILabel *)v19 setTextColor:tintColor];

    [(UILabel *)height->_selectedTitleLabel setBackgroundColor:0];
    [(SKUICrossFadingTabBarButton *)height addSubview:height->_selectedTitleLabel];
    [(UILabel *)height->_standardTitleLabel setAdjustsLetterSpacingToFitWidth:1];
    [(UILabel *)height->_selectedTitleLabel setAdjustsLetterSpacingToFitWidth:1];
    v21 = objc_alloc_init(MEMORY[0x277D755E8]);
    standardImageView = height->_standardImageView;
    height->_standardImageView = v21;

    [(SKUICrossFadingTabBarButton *)height addSubview:height->_standardImageView];
    v23 = objc_alloc_init(MEMORY[0x277D755E8]);
    selectedImageView = height->_selectedImageView;
    height->_selectedImageView = v23;

    [(UIImageView *)height->_selectedImageView setAlpha:0.0];
    [(SKUICrossFadingTabBarButton *)height addSubview:height->_selectedImageView];
    [(UILabel *)height->_standardTitleLabel _setDrawsAsBackdropOverlayWithBlendMode:1];
    [(UIImageView *)height->_standardImageView _setDrawsAsBackdropOverlayWithBlendMode:1];
    layer = [(SKUICrossFadingTabBarButton *)height layer];
    [layer setAllowsGroupOpacity:0];
  }

  return height;
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = SKUICrossFadingTabBarButton;
  [(SKUICrossFadingTabBarButton *)&v41 layoutSubviews];
  [(SKUICrossFadingTabBarButton *)self bounds];
  v43 = CGRectInset(v42, 0.0, 2.0);
  x = v43.origin.x;
  rect_24 = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  [(UILabel *)self->_standardTitleLabel sizeThatFits:v43.size.width, v43.size.height];
  v7 = v6;
  v9 = v8;
  [(UILabel *)self->_selectedTitleLabel sizeThatFits:width, height];
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  if (v7 < v10)
  {
    v7 = v10;
  }

  if (v9 >= v11)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  v36 = v14;
  rect = *MEMORY[0x277CBF3A0];
  v44.origin.x = x;
  rect_8 = width;
  rect_16 = x;
  v44.origin.y = rect_24;
  v44.size.width = width;
  v44.size.height = height;
  v15 = CGRectGetWidth(v44);
  v45.origin.x = v12;
  v45.origin.y = v13;
  v45.size.width = v7;
  v45.size.height = v36;
  v16 = (v15 - CGRectGetWidth(v45)) * 0.5;
  v46.origin.x = x;
  v46.origin.y = rect_24;
  v46.size.width = width;
  v46.size.height = height;
  CGRectGetMaxY(v46);
  v47.origin.x = v16;
  v47.origin.y = v13;
  v17 = v13;
  v47.size.width = v7;
  v47.size.height = v36;
  CGRectGetHeight(v47);
  UICeilToViewScale();
  v19 = v18;
  UICeilToViewScale();
  v21 = v20;
  UIFloorToViewScale();
  v23 = v22;
  UIFloorToViewScale();
  v25 = v24;
  [(UILabel *)self->_standardTitleLabel setFrame:v23, v24, v19, v21];
  [(UILabel *)self->_selectedTitleLabel setFrame:v23, v25, v19, v21];
  [(UIImage *)self->_image size];
  v27 = v26;
  v29 = v28;
  [(UIImage *)self->_selectedImage size];
  if (v27 < v30)
  {
    v27 = v30;
  }

  if (v29 < v31)
  {
    v29 = v31;
  }

  v48.origin.x = v23;
  v48.origin.y = v25;
  v48.size.width = v19;
  v48.size.height = v21;
  CGRectGetMidX(v48);
  v49.origin.x = rect;
  v49.origin.y = v17;
  v49.size.width = v27;
  v49.size.height = v29;
  CGRectGetWidth(v49);
  UIFloorToViewScale();
  v33 = v32;
  v50.origin.x = rect_16;
  v50.origin.y = rect_24;
  v50.size.width = rect_8;
  v50.size.height = height;
  CGRectGetHeight(v50);
  v51.origin.x = v33;
  v51.origin.y = v17;
  v51.size.width = v27;
  v51.size.height = v29;
  CGRectGetHeight(v51);
  UIFloorToViewScale();
  v35 = v34 + -4.0;
  [(UIImageView *)self->_standardImageView setFrame:v33, v34 + -4.0, v27, v29];
  [(UIImageView *)self->_selectedImageView setFrame:v33, v35, v27, v29];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = SKUICrossFadingTabBarButton;
  [(SKUICrossFadingTabBarButton *)&v6 tintColorDidChange];
  tintColor = [(SKUICrossFadingTabBarButton *)self tintColor];
  [(UILabel *)self->_selectedTitleLabel setTextColor:tintColor];
  selectedImageView = self->_selectedImageView;
  v5 = [(UIImage *)self->_selectedImage _flatImageWithColor:tintColor];
  [(UIImageView *)selectedImageView setImage:v5];
}

- (void)setTitle:(id)title
{
  if (self->_title != title)
  {
    titleCopy = title;
    v5 = [titleCopy copy];
    title = self->_title;
    self->_title = v5;

    [(UILabel *)self->_selectedTitleLabel setText:titleCopy];
    [(UILabel *)self->_standardTitleLabel setText:titleCopy];

    [(SKUICrossFadingTabBarButton *)self setNeedsLayout];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v9 = imageCopy;
    objc_storeStrong(&self->_image, image);
    standardImageView = self->_standardImageView;
    textColor = [(UILabel *)self->_standardTitleLabel textColor];
    v8 = [(UIImage *)v9 _flatImageWithColor:textColor];
    [(UIImageView *)standardImageView setImage:v8];

    [(SKUICrossFadingTabBarButton *)self setNeedsLayout];
    imageCopy = v9;
  }
}

- (void)setSelectedImage:(id)image
{
  imageCopy = image;
  if (self->_selectedImage != imageCopy)
  {
    v9 = imageCopy;
    objc_storeStrong(&self->_selectedImage, image);
    selectedImageView = self->_selectedImageView;
    tintColor = [(SKUICrossFadingTabBarButton *)self tintColor];
    v8 = [(UIImage *)v9 _flatImageWithColor:tintColor];
    [(UIImageView *)selectedImageView setImage:v8];

    [(SKUICrossFadingTabBarButton *)self setNeedsLayout];
    imageCopy = v9;
  }
}

- (void)setSelectionProgress:(double)progress
{
  if (self->_selectionProgress != progress)
  {
    v12 = v7;
    v13 = v3;
    self->_selectionProgress = progress;
    if (progress < 0.0)
    {
      progress = 0.0;
    }

    v10 = fmin(progress, 1.0);
    [(UILabel *)self->_selectedTitleLabel setAlpha:v10, v8, v12, v4, v13, v5];
    [(UILabel *)self->_standardTitleLabel setAlpha:1.0 - v10];
    [(UIImageView *)self->_selectedImageView setAlpha:v10];
    standardImageView = self->_standardImageView;

    [(UIImageView *)standardImageView setAlpha:1.0 - v10];
  }
}

- (void)_setBadgeValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([0 length])
    {
      goto LABEL_10;
    }

    v4 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v4 = valueCopy;
  if (![v4 length])
  {
    goto LABEL_9;
  }

  if (!v4)
  {
LABEL_10:
    [(_Badge *)self->_badge removeFromSuperview];
    badge = self->_badge;
    self->_badge = 0;

    v4 = 0;
    goto LABEL_11;
  }

  v5 = self->_badge;
  if (!v5)
  {
    v10 = [[_Badge alloc] initWithText:v4];
    v11 = self->_badge;
    self->_badge = v10;

    [(SKUICrossFadingTabBarButton *)self addSubview:self->_badge];
    goto LABEL_15;
  }

  [(_Badge *)v5 frame];
  v7 = v6;
  [(_Badge *)self->_badge setText:v4];
  [(_Badge *)self->_badge frame];
  if (v7 != v8)
  {
LABEL_15:
    [(SKUICrossFadingTabBarButton *)self _positionBadge];
  }

LABEL_11:
}

- (void)_positionBadge
{
  superview = [(SKUICrossFadingTabBarButton *)self superview];
  badge = self->_badge;
  if (badge)
  {
    v5 = superview == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v19 = superview;
    [(_Badge *)badge frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    superview2 = [(SKUICrossFadingTabBarButton *)self superview];
    [(SKUICrossFadingTabBarButton *)self convertPoint:superview2 fromView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    v14 = v13 + 3.0;

    [(UIImageView *)self->_standardImageView frame];
    CGRectGetMaxX(v21);
    UIRoundToViewScale();
    v16 = v15 + -5.0;
    [v19 bounds];
    [(SKUICrossFadingTabBarButton *)self convertPoint:v19 fromView:CGRectGetMaxX(v22) + -0.5, 0.0];
    UIRoundToViewScale();
    v18 = v17;
    v23.origin.x = v7;
    v23.origin.y = v14;
    v23.size.width = v9;
    v23.size.height = v11;
    badge = [(_Badge *)self->_badge setFrame:fmax(fmin(v16, v18 - CGRectGetWidth(v23)), 0.0), v14, v9, v11];
    superview = v19;
  }

  MEMORY[0x2821F96F8](badge, superview);
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICrossFadingTabBarButton initWithFrame:]";
}

@end