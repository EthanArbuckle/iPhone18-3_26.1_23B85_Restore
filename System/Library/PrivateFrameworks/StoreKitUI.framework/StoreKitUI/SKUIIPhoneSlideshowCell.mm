@interface SKUIIPhoneSlideshowCell
- (CGRect)imageFrame;
- (CGSize)imageSize;
- (SKUIIPhoneSlideshowCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageSize:(CGSize)size;
- (void)setVideo:(BOOL)video;
@end

@implementation SKUIIPhoneSlideshowCell

- (SKUIIPhoneSlideshowCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIPhoneSlideshowCell initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUIIPhoneSlideshowCell;
  height = [(SKUIIPhoneSlideshowCell *)&v13 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = height->_imageView;
    height->_imageView = v9;

    [(UIImageView *)height->_imageView setContentMode:1];
    contentView = [(SKUIIPhoneSlideshowCell *)height contentView];
    [contentView addSubview:height->_imageView];
  }

  return height;
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

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_imageView image];

  v5 = imageCopy;
  if (image != imageCopy)
  {
    [(UIImageView *)self->_imageView setImage:imageCopy];
    [(SKUIIPhoneSlideshowCell *)self setNeedsLayout];
    v5 = imageCopy;
  }
}

- (void)setImageSize:(CGSize)size
{
  if (self->_imageSize.width != size.width || self->_imageSize.height != size.height)
  {
    self->_imageSize = size;
    [(SKUIIPhoneSlideshowCell *)self setNeedsLayout];
  }
}

- (void)setVideo:(BOOL)video
{
  playIcon = self->_playIcon;
  if ((((playIcon == 0) ^ video) & 1) == 0)
  {
    videoCopy = video;
    [(UIImageView *)playIcon removeFromSuperview];
    v6 = self->_playIcon;
    self->_playIcon = 0;

    if (videoCopy)
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

      contentView = [(SKUIIPhoneSlideshowCell *)self contentView];
      [contentView addSubview:self->_playIcon];

      [(SKUIIPhoneSlideshowCell *)self setNeedsLayout];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = SKUIIPhoneSlideshowCell;
  [(SKUIIPhoneSlideshowCell *)&v9 setHighlighted:?];
  if (self->_playIcon)
  {
    v5 = MEMORY[0x277D755B8];
    if (highlightedCopy)
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
  contentView = [(SKUIIPhoneSlideshowCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  imageView = self->_imageView;
  if (imageView)
  {
    width = self->_imageSize.width;
    height = self->_imageSize.height;
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      image = [(UIImageView *)imageView image];
      [image size];
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