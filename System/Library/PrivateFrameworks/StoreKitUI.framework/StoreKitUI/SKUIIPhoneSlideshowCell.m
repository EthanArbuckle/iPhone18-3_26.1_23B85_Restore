@interface SKUIIPhoneSlideshowCell
- (CGRect)imageFrame;
- (CGSize)imageSize;
- (SKUIIPhoneSlideshowCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setVideo:(BOOL)a3;
@end

@implementation SKUIIPhoneSlideshowCell

- (SKUIIPhoneSlideshowCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPhoneSlideshowCell initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUIIPhoneSlideshowCell;
  v8 = [(SKUIIPhoneSlideshowCell *)&v13 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v8->_imageView;
    v8->_imageView = v9;

    [(UIImageView *)v8->_imageView setContentMode:1];
    v11 = [(SKUIIPhoneSlideshowCell *)v8 contentView];
    [v11 addSubview:v8->_imageView];
  }

  return v8;
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

- (void)setImage:(id)a3
{
  v6 = a3;
  v4 = [(UIImageView *)self->_imageView image];

  v5 = v6;
  if (v4 != v6)
  {
    [(UIImageView *)self->_imageView setImage:v6];
    [(SKUIIPhoneSlideshowCell *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setImageSize:(CGSize)a3
{
  if (self->_imageSize.width != a3.width || self->_imageSize.height != a3.height)
  {
    self->_imageSize = a3;
    [(SKUIIPhoneSlideshowCell *)self setNeedsLayout];
  }
}

- (void)setVideo:(BOOL)a3
{
  playIcon = self->_playIcon;
  if ((((playIcon == 0) ^ a3) & 1) == 0)
  {
    v5 = a3;
    [(UIImageView *)playIcon removeFromSuperview];
    v6 = self->_playIcon;
    self->_playIcon = 0;

    if (v5)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = MEMORY[0x277D755B8];
      if ([(SKUIIPhoneSlideshowCell *)self isHighlighted])
      {
        v8 = @"PlayControlPressed";
      }

      else
      {
        v8 = @"PlayControl";
      }

      v9 = [v7 imageNamed:v8 inBundle:v13];
      v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
      v11 = self->_playIcon;
      self->_playIcon = v10;

      v12 = [(SKUIIPhoneSlideshowCell *)self contentView];
      [v12 addSubview:self->_playIcon];

      [(SKUIIPhoneSlideshowCell *)self setNeedsLayout];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = SKUIIPhoneSlideshowCell;
  [(SKUIIPhoneSlideshowCell *)&v9 setHighlighted:?];
  if (self->_playIcon)
  {
    v5 = MEMORY[0x277D755B8];
    if (v3)
    {
      v6 = @"PlayControlPressed";
    }

    else
    {
      v6 = @"PlayControl";
    }

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v5 imageNamed:v6 inBundle:v7];

    [(UIImageView *)self->_playIcon setImage:v8];
    [(SKUIIPhoneSlideshowCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SKUIIPhoneSlideshowCell;
  [(SKUIIPhoneSlideshowCell *)&v19 layoutSubviews];
  v3 = [(SKUIIPhoneSlideshowCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  imageView = self->_imageView;
  if (imageView)
  {
    width = self->_imageSize.width;
    height = self->_imageSize.height;
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      v12 = [(UIImageView *)imageView image];
      [v12 size];
      width = v13;
      height = v14;

      imageView = self->_imageView;
    }

    v15 = (v5 - fmin(width, v5)) * 0.5;
    v16 = (v7 - fmin(height, v7)) * 0.5;
    [(UIImageView *)imageView setFrame:roundf(v15), roundf(v16)];
  }

  playIcon = self->_playIcon;
  if (playIcon)
  {
    [(UIImageView *)playIcon sizeToFit];
    [(UIImageView *)self->_playIcon frame];
    v18 = self->_playIcon;
    [(SKUIIPhoneSlideshowCell *)self center];
    [(UIImageView *)v18 setCenter:?];
    [(SKUIIPhoneSlideshowCell *)self bringSubviewToFront:self->_playIcon];
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIPhoneSlideshowCell initWithFrame:]";
}

@end