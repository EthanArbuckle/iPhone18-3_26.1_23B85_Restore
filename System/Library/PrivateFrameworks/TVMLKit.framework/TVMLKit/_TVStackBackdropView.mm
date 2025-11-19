@interface _TVStackBackdropView
- (_TVStackBackdropView)initWithBlurEffectStyle:(int64_t)a3;
- (void)layoutSubviews;
- (void)setBlurEffectStyle:(int64_t)a3;
- (void)setImage:(id)a3;
@end

@implementation _TVStackBackdropView

- (_TVStackBackdropView)initWithBlurEffectStyle:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = _TVStackBackdropView;
  v4 = [(_TVStackBackdropView *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_blurEffectStyle = a3;
    v6 = objc_alloc(MEMORY[0x277D75D68]);
    v7 = [MEMORY[0x277D75210] effectWithStyle:a3];
    v8 = [v6 initWithEffect:v7];
    visualEffectView = v5->_visualEffectView;
    v5->_visualEffectView = v8;

    [(_TVStackBackdropView *)v5 addSubview:v5->_visualEffectView];
  }

  return v5;
}

- (void)setBlurEffectStyle:(int64_t)a3
{
  if (self->_blurEffectStyle != a3)
  {
    self->_blurEffectStyle = a3;
    visualEffectView = self->_visualEffectView;
    v5 = [MEMORY[0x277D75210] effectWithStyle:?];
    [(UIVisualEffectView *)visualEffectView setEffect:v5];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(_TVStackBackdropView *)self setNeedsLayout];
    v5 = v6;
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
  v7 = [(_TVStackBackdropView *)self image];

  imageView = self->_imageView;
  if (v7)
  {
    if (!imageView)
    {
      v9 = _TVStackMakeImageView();
      v10 = self->_imageView;
      self->_imageView = v9;

      [(_TVStackBackdropView *)self insertSubview:self->_imageView below:self->_visualEffectView];
      imageView = self->_imageView;
    }

    v11 = [(_TVStackBackdropView *)self image];
    [(UIImageView *)imageView setImage:v11];

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