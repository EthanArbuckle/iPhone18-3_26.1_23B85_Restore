@interface _UIAlertControllerFilledBackgroundView
- (_UIAlertControllerFilledBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setFillColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRoundedCornerPosition:(unint64_t)position;
@end

@implementation _UIAlertControllerFilledBackgroundView

- (_UIAlertControllerFilledBackgroundView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UIAlertControllerFilledBackgroundView;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_isHighlighted = 0;
    v5 = [UIView alloc];
    [(UIView *)v4 bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v6;

    [(UIView *)v4 addSubview:v4->_backgroundView];
  }

  return v4;
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  [(UIView *)self->_backgroundView setFrame:?];
  v5 = v4 * 0.5;
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v9 = fmin(v5, 32.0);
  if (!IsAccessibilityCategory)
  {
    v9 = v5;
  }

  [(_UIAlertControllerFilledBackgroundView *)self setCornerRadius:v9];
  backgroundView = self->_backgroundView;
  v11 = 0.4;
  if (!self->_isHighlighted)
  {
    v11 = 1.0;
  }

  [(UIView *)backgroundView setAlpha:v11];
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (self->_fillColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_fillColor, color);
    [(UIView *)self->_backgroundView setBackgroundColor:v6];
    colorCopy = v6;
  }
}

- (void)setCornerRadius:(double)radius
{
  layer = [(UIView *)self->_backgroundView layer];
  [layer setCornerRadius:radius];
}

- (void)setRoundedCornerPosition:(unint64_t)position
{
  layer = [(UIView *)self->_backgroundView layer];
  [layer setMaskedCorners:position];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_isHighlighted != highlighted)
  {
    highlightedCopy = highlighted;
    if (+[UIView areAnimationsEnabled])
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57___UIAlertControllerFilledBackgroundView_setHighlighted___block_invoke;
      v6[3] = &unk_1E70F35E0;
      v6[4] = self;
      v7 = highlightedCopy;
      [UIView animateWithDuration:v6 animations:0.1];
    }

    else
    {
      v5 = 0.4;
      if (!highlightedCopy)
      {
        v5 = 1.0;
      }

      [(UIView *)self->_backgroundView setAlpha:v5];
    }

    self->_isHighlighted = highlightedCopy;
  }
}

@end