@interface _UIAlertControllerFilledBackgroundView
- (_UIAlertControllerFilledBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setFillColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setRoundedCornerPosition:(unint64_t)a3;
@end

@implementation _UIAlertControllerFilledBackgroundView

- (_UIAlertControllerFilledBackgroundView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _UIAlertControllerFilledBackgroundView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v6 = [(UIView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

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

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (self->_fillColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fillColor, a3);
    [(UIView *)self->_backgroundView setBackgroundColor:v6];
    v5 = v6;
  }
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(UIView *)self->_backgroundView layer];
  [v4 setCornerRadius:a3];
}

- (void)setRoundedCornerPosition:(unint64_t)a3
{
  v4 = [(UIView *)self->_backgroundView layer];
  [v4 setMaskedCorners:a3];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_isHighlighted != a3)
  {
    v3 = a3;
    if (+[UIView areAnimationsEnabled])
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57___UIAlertControllerFilledBackgroundView_setHighlighted___block_invoke;
      v6[3] = &unk_1E70F35E0;
      v6[4] = self;
      v7 = v3;
      [UIView animateWithDuration:v6 animations:0.1];
    }

    else
    {
      v5 = 0.4;
      if (!v3)
      {
        v5 = 1.0;
      }

      [(UIView *)self->_backgroundView setAlpha:v5];
    }

    self->_isHighlighted = v3;
  }
}

@end