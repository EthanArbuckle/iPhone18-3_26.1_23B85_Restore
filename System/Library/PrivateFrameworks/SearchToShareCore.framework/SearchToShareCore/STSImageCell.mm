@interface STSImageCell
- (CGRect)imageFrame;
- (STSImageCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)imageInsets;
- (void)_updateBadgeAnimated:(BOOL)animated;
- (void)_updatePlaceholderViewAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBadge:(id)badge;
- (void)setCategory:(id)category;
- (void)setDebugBadge:(id)badge;
- (void)setDownloadProgress:(double)progress;
- (void)setImage:(id)image animated:(BOOL)animated;
- (void)setPlaceholderColor:(id)color;
- (void)setShowDownloadIndicator:(double)indicator animated:(BOOL)animated;
@end

@implementation STSImageCell

- (STSImageCell)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = STSImageCell;
  v3 = [(STSImageCell *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    imageView = v3->_imageView;
    v3->_imageView = v9;

    v11 = v3->_imageView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)v11 setBackgroundColor:whiteColor];

    [(UIImageView *)v3->_imageView setContentMode:2];
    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    [(UIImageView *)v3->_imageView setAlpha:0.0];
    [(UIImageView *)v3->_imageView setOpaque:1];
    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    labelView = v3->_labelView;
    v3->_labelView = v13;

    v15 = v3->_labelView;
    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v15 setFont:v16];

    v17 = v3->_labelView;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v17 setTextColor:whiteColor2];

    [(UILabel *)v3->_labelView setTextAlignment:0];
    v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    labelBackgroundView = v3->_labelBackgroundView;
    v3->_labelBackgroundView = v19;

    v21 = v3->_labelBackgroundView;
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(UIView *)v21 setBackgroundColor:v22];

    v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    placeholderColorView = v3->_placeholderColorView;
    v3->_placeholderColorView = v23;

    [(UIView *)v3->_placeholderColorView setAlpha:0.0];
    contentView = [(STSImageCell *)v3 contentView];
    [contentView addSubview:v3->_imageView];

    contentView2 = [(STSImageCell *)v3 contentView];
    [contentView2 addSubview:v3->_placeholderColorView];

    contentView3 = [(STSImageCell *)v3 contentView];
    [contentView3 addSubview:v3->_labelBackgroundView];

    contentView4 = [(STSImageCell *)v3 contentView];
    [contentView4 addSubview:v3->_labelView];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = STSImageCell;
  [(STSImageCell *)&v3 prepareForReuse];
  [(STSImageCell *)self setShowDownloadIndicator:0 animated:0.0];
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = STSImageCell;
  [(STSImageCell *)&v24 layoutSubviews];
  contentView = [(STSImageCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  Width = CGRectGetWidth(v25);
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  Height = CGRectGetHeight(v26);
  [(STSImageCell *)self imageAspectRatio];
  UIFloorToViewScale();
  v15 = v14;
  [(UIImageView *)self->_badgeView sizeThatFits:v9, v11];
  v17 = v16;
  v23 = v18;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v22 = CGRectGetMaxX(v27) - v17 + -5.0;
  v19 = Height + -24.0;
  [(STSCellDownloadOverlayView *)self->_downloadProgressView setFrame:v5, v7, v9, v11];
  [(UIImageView *)self->_imageView setFrame:0.0, 0.0, Width, v15];
  [(UIView *)self->_placeholderColorView setFrame:0.0, 0.0, Width, v15];
  [(UIImageView *)self->_badgeView setFrame:v22, 5.0, v17, v23];
  [(UIView *)self->_labelBackgroundView setFrame:0.0, v19, Width, 24.0];
  [(UILabel *)self->_labelView setFrame:6.0, v19, Width + -12.0, 24.0];
  if (STSIsInternalInstall())
  {
    [(UIImageView *)self->_debugBadgeView sizeThatFits:v9, v11];
    [(UIImageView *)self->_debugBadgeView setFrame:5.0, 5.0, v20, v21];
  }
}

- (CGRect)imageFrame
{
  [(UIImageView *)self->_imageView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)imageInsets
{
  [(STSImageCell *)self bounds];
  v4 = v3;
  rect = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_imageView frame];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  rect_16 = CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  rect_8 = CGRectGetMinX(v26);
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v15 = CGRectGetHeight(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v16 = v15 - CGRectGetMaxY(v28);
  v29.origin.x = rect;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v17 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v18 = v17 - CGRectGetMaxX(v30);
  v20 = rect_8;
  v19 = rect_16;
  v21 = v16;
  result.right = v18;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  v13 = categoryCopy;
  if (categoryCopy)
  {
    v5 = [(NSString *)self->_category isEqualToString:categoryCopy];
    v6 = v13;
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = [v13 copy];
    category = self->_category;
    self->_category = v7;

    [(UILabel *)self->_labelView setText:self->_category];
    labelView = self->_labelView;
    image = [(STSImageCell *)self image];
    [(UILabel *)labelView setHidden:image == 0];

    labelBackgroundView = self->_labelBackgroundView;
    image2 = [(STSImageCell *)self image];
    [(UIView *)labelBackgroundView setHidden:image2 == 0];
  }

  else
  {
    [(UILabel *)self->_labelView setHidden:1];
    [(UIView *)self->_labelBackgroundView setHidden:1];
    image2 = self->_category;
    self->_category = 0;
  }

  v6 = v13;
LABEL_6:

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  image = [(UIImageView *)self->_imageView image];
  v7 = [image isEqual:imageCopy];

  v9 = imageCopy;
  if ((v7 & 1) == 0)
  {
    [(UIImageView *)self->_imageView setImage:imageCopy];
    v10 = 1.0;
    if (!imageCopy)
    {
      v10 = 0.0;
    }

    [(UIImageView *)self->_imageView setAlpha:v10];
    category = [(STSImageCell *)self category];
    if (category)
    {
      v12 = category;
      image2 = [(UIImageView *)self->_imageView image];

      if (image2)
      {
        [(UILabel *)self->_labelView setHidden:0];
        [(UIView *)self->_labelBackgroundView setHidden:0];
      }
    }

    [(STSImageCell *)self _updateBadgeAnimated:animatedCopy];
    v8 = [(STSImageCell *)self _updatePlaceholderViewAnimated:animatedCopy];
    v9 = imageCopy;
  }

  MEMORY[0x2821F96F8](v8, v9);
}

- (void)setPlaceholderColor:(id)color
{
  colorCopy = color;
  if (self->_placeholderColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_placeholderColor, color);
    [(STSImageCell *)self _updatePlaceholderViewAnimated:0];
    colorCopy = v6;
  }
}

- (void)setBadge:(id)badge
{
  badgeCopy = badge;
  image = [(UIImageView *)self->_badgeView image];
  v5 = [badgeCopy isEqual:image];

  v6 = badgeCopy;
  if ((v5 & 1) == 0)
  {
    badgeView = self->_badgeView;
    if (badgeCopy)
    {
      if (!badgeView)
      {
        v8 = objc_alloc(MEMORY[0x277D755E8]);
        v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v10 = self->_badgeView;
        self->_badgeView = v9;

        [(UIImageView *)self->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
        contentView = [(STSImageCell *)self contentView];
        [contentView insertSubview:self->_badgeView aboveSubview:self->_imageView];

        v6 = badgeCopy;
        badgeView = self->_badgeView;
      }

      [(UIImageView *)badgeView setImage:v6];
      [(STSImageCell *)self setNeedsLayout];
    }

    else
    {
      [(UIImageView *)badgeView removeFromSuperview];
      v12 = self->_badgeView;
      self->_badgeView = 0;
    }

    [(STSImageCell *)self _updateBadgeAnimated:0];
  }

  MEMORY[0x2821F9730]();
}

- (void)setDebugBadge:(id)badge
{
  badgeCopy = badge;
  if (STSIsInternalInstall())
  {
    image = [(UIImageView *)self->_debugBadgeView image];
    v5 = [badgeCopy isEqual:image];

    if ((v5 & 1) == 0)
    {
      debugBadgeView = self->_debugBadgeView;
      v7 = badgeCopy;
      if (badgeCopy)
      {
        if (!debugBadgeView)
        {
          v8 = objc_alloc(MEMORY[0x277D755E8]);
          v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
          v10 = self->_debugBadgeView;
          self->_debugBadgeView = v9;

          [(UIImageView *)self->_debugBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
          contentView = [(STSImageCell *)self contentView];
          [contentView insertSubview:self->_debugBadgeView aboveSubview:self->_placeholderColorView];

          v7 = badgeCopy;
          debugBadgeView = self->_debugBadgeView;
        }

        [(UIImageView *)debugBadgeView setImage:v7];
        [(STSImageCell *)self setNeedsLayout];
      }

      else
      {
        [(UIImageView *)debugBadgeView removeFromSuperview];
        v12 = self->_debugBadgeView;
        self->_debugBadgeView = 0;
      }
    }
  }
}

- (void)setShowDownloadIndicator:(double)indicator animated:(BOOL)animated
{
  LOBYTE(v4) = self->_showDownloadIndicator;
  if (v4 != indicator)
  {
    animatedCopy = animated;
    self->_showDownloadIndicator = indicator != 0.0;
    if (indicator == 0.0)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __50__STSImageCell_setShowDownloadIndicator_animated___block_invoke_2;
      v17[3] = &unk_279B8A988;
      v17[4] = self;
      v12 = MEMORY[0x266751FB0](v17, a2);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__STSImageCell_setShowDownloadIndicator_animated___block_invoke_3;
      v16[3] = &unk_279B8AD38;
      v16[4] = self;
      v13 = MEMORY[0x266751FB0](v16);
      v14 = 0.0;
      if (animatedCopy)
      {
LABEL_9:
        [MEMORY[0x277D75D18] animateWithDuration:4 delay:v12 options:v13 animations:0.2 completion:v14];
LABEL_15:

        return;
      }
    }

    else
    {
      if (!self->_downloadProgressView)
      {
        v7 = [STSCellDownloadOverlayView alloc];
        v8 = [(STSCellDownloadOverlayView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        downloadProgressView = self->_downloadProgressView;
        self->_downloadProgressView = v8;

        [(STSCellDownloadOverlayView *)self->_downloadProgressView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(STSCellDownloadOverlayView *)self->_downloadProgressView setAlpha:0.0];
        contentView = [(STSImageCell *)self contentView];
        [contentView addSubview:self->_downloadProgressView];
      }

      [(STSImageCell *)self setNeedsLayout];
      progressView = [(STSCellDownloadOverlayView *)self->_downloadProgressView progressView];
      [progressView setProgress:self->_downloadProgress];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __50__STSImageCell_setShowDownloadIndicator_animated___block_invoke;
      v18[3] = &unk_279B8A988;
      v18[4] = self;
      v12 = MEMORY[0x266751FB0](v18);
      v13 = 0;
      v14 = 0.2;
      if (animatedCopy)
      {
        goto LABEL_9;
      }
    }

    if (v12)
    {
      v12[2](v12);
    }

    if (v13)
    {
      v13[2](v13, 1);
    }

    goto LABEL_15;
  }

  progressView2 = [(STSCellDownloadOverlayView *)self->_downloadProgressView progressView];
  [progressView2 setProgress:self->_downloadProgress];
}

void __50__STSImageCell_setShowDownloadIndicator_animated___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 704) & 1) == 0)
  {
    [*(v2 + 672) removeFromSuperview];
    v4 = *(a1 + 32);
    v5 = *(v4 + 672);
    *(v4 + 672) = 0;
  }
}

- (void)setDownloadProgress:(double)progress
{
  self->_downloadProgress = progress;
  progressView = [(STSCellDownloadOverlayView *)self->_downloadProgressView progressView];
  [progressView setProgress:progress];
}

- (void)_updateBadgeAnimated:(BOOL)animated
{
  image = [(STSImageCell *)self image];
  v5 = 1.0;
  if (!image)
  {
    imageInfo = [(STSImageCell *)self imageInfo];
    if (imageInfo)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  badgeView = self->_badgeView;

  [(UIImageView *)badgeView setAlpha:v5];
}

- (void)_updatePlaceholderViewAnimated:(BOOL)animated
{
  if (self->_placeholderColor)
  {
    image = [(UIImageView *)self->_imageView image];
    v5 = 0.0;
    if (!image)
    {
      if (self->_imageInfo)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = 1.0;
      }
    }
  }

  else
  {
    v5 = 0.0;
  }

  [(UIView *)self->_placeholderColorView alpha];
  if (v5 != v6 || (placeholderColor = self->_placeholderColor, [(UIView *)self->_placeholderColorView backgroundColor], v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(placeholderColor) = [(UIColor *)placeholderColor isEqual:v8], v8, (placeholderColor & 1) == 0))
  {
    [(UIView *)self->_placeholderColorView setBackgroundColor:self->_placeholderColor];
    placeholderColorView = self->_placeholderColorView;

    [(UIView *)placeholderColorView setAlpha:v5];
  }
}

@end