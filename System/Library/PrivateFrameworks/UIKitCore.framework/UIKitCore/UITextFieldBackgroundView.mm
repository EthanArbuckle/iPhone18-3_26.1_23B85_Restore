@interface UITextFieldBackgroundView
- (UITextFieldBackgroundView)initWithFrame:(CGRect)frame active:(BOOL)active;
- (void)setActive:(BOOL)active;
- (void)setBounds:(CGRect)bounds;
- (void)setFillColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)setProgress:(float)progress;
@end

@implementation UITextFieldBackgroundView

- (UITextFieldBackgroundView)initWithFrame:(CGRect)frame active:(BOOL)active
{
  v8.receiver = self;
  v8.super_class = UITextFieldBackgroundView;
  v5 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_active = active;
    v5->_progress = 0.0;
    v5->_enabled = 1;
    [(UITextFieldBackgroundView *)v5 _updateImages];
    [(UIView *)v6 setUserInteractionEnabled:0];
    [(UIView *)v6 setNeedsLayout];
  }

  return v6;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UITextFieldBackgroundView;
  [(UIView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UIView *)self layoutSubviews];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UITextFieldBackgroundView;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(UIView *)self layoutSubviews];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(UITextFieldBackgroundView *)self _updateImages];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setProgress:(float)progress
{
  if (self->_progress != progress)
  {
    self->_progress = progress;
    if (self->_active)
    {
      [(UITextFieldBackgroundView *)self _updateImages];

      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (self->_fillColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_fillColor, color);
    [(UITextFieldBackgroundView *)self _updateImages];
    [(UIView *)self setNeedsLayout];
    colorCopy = v6;
  }
}

@end