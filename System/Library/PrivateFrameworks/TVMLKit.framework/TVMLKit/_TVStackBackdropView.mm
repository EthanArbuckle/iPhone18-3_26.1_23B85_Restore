@interface _TVStackBackdropView
- (_TVStackBackdropView)initWithBlurEffectStyle:(int64_t)style;
- (void)layoutSubviews;
- (void)setBlurEffectStyle:(int64_t)style;
- (void)setImage:(id)image;
@end

@implementation _TVStackBackdropView

- (_TVStackBackdropView)initWithBlurEffectStyle:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = _TVStackBackdropView;
  v4 = [(_TVStackBackdropView *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_blurEffectStyle = style;
    v6 = objc_alloc(MEMORY[0x277D75D68]);
    v7 = [MEMORY[0x277D75210] effectWithStyle:style];
    v8 = [v6 initWithEffect:v7];
    visualEffectView = v5->_visualEffectView;
    v5->_visualEffectView = v8;

    [(_TVStackBackdropView *)v5 addSubview:v5->_visualEffectView];
  }

  return v5;
}

- (void)setBlurEffectStyle:(int64_t)style
{
  if (self->_blurEffectStyle != style)
  {
    self->_blurEffectStyle = style;
    visualEffectView = self->_visualEffectView;
    v5 = [MEMORY[0x277D75210] effectWithStyle:?];
    [(UIVisualEffectView *)visualEffectView setEffect:v5];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(_TVStackBackdropView *)self setNeedsLayout];
    imageCopy = v6;
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _TVStackBackdropView;
  [(_TVStackBackdropView *)&v13 layoutSubviews];
  [(_TVStackBackdropView *)self bounds];
  v4 = v3;
  v6 = v5;
  image = [(_TVStackBackdropView *)self image];

  imageView = self->_imageView;
  if (image)
  {
    if (!imageView)
    {
      v9 = _TVStackMakeImageView();
      v10 = self->_imageView;
      self->_imageView = v9;

      [(_TVStackBackdropView *)self insertSubview:self->_imageView below:self->_visualEffectView];
      imageView = self->_imageView;
    }

    image2 = [(_TVStackBackdropView *)self image];
    [(UIImageView *)imageView setImage:image2];

    [(UIImageView *)self->_imageView setFrame:0.0, 0.0, v4, v6];
  }

  else
  {
    [(UIImageView *)self->_imageView removeFromSuperview];
    v12 = self->_imageView;
    self->_imageView = 0;
  }

  [(UIVisualEffectView *)self->_visualEffectView setFrame:0.0, 0.0, v4, v6];
}

@end