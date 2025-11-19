@interface _UIStatusBarStringView
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)alignmentRectInsets;
- (_UIStatusBarStringView)initWithFrame:(CGRect)a3;
- (void)_updateAlternateTextTimer;
- (void)applyStyleAttributes:(id)a3;
- (void)setAlternateText:(id)a3;
- (void)setShowsAlternateText:(BOOL)a3;
- (void)setText:(id)a3;
@end

@implementation _UIStatusBarStringView

- (_UIStatusBarStringView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarStringView;
  v3 = [(UILabel *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UILabel *)v3 setAllowsDefaultTighteningForTruncation:1];
  return v3;
}

- (void)applyStyleAttributes:(id)a3
{
  fontStyle = self->_fontStyle;
  v5 = a3;
  v6 = [v5 fontForStyle:fontStyle];
  [(UILabel *)self setFont:v6];

  v7 = [v5 textColor];

  [(UILabel *)self setTextColor:v7];
}

- (void)setShowsAlternateText:(BOOL)a3
{
  if (self->_showsAlternateText != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_showsAlternateText = a3;
    if (a3)
    {
      [(UILabel *)&v6 setText:self->_alternateText, v5.receiver, v5.super_class, self, _UIStatusBarStringView, v7, v8];
    }

    else
    {
      [(UILabel *)&v5 setText:self->_originalText, self, _UIStatusBarStringView, v6.receiver, v6.super_class, v7, v8];
    }
  }
}

- (void)setText:(id)a3
{
  v4 = a3;
  [(_UIStatusBarStringView *)self setOriginalText:v4];
  v5.receiver = self;
  v5.super_class = _UIStatusBarStringView;
  [(UILabel *)&v5 setText:v4];
}

- (void)setAlternateText:(id)a3
{
  v5 = a3;
  if (self->_alternateText != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_alternateText, a3);
    [(_UIStatusBarStringView *)self _updateAlternateTextTimer];
    v5 = v6;
  }
}

- (void)_updateAlternateTextTimer
{
  if ([(NSString *)self->_alternateText length])
  {
    v3 = [(UIView *)self window];
    v4 = v3 != 0;

    p_alternateTextTimer = &self->_alternateTextTimer;
    alternateTextTimer = self->_alternateTextTimer;
    v7 = alternateTextTimer == 0;
    if (v3 && !alternateTextTimer)
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E695DFF0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51___UIStatusBarStringView__updateAlternateTextTimer__block_invoke;
      v12[3] = &unk_1E70F4130;
      objc_copyWeak(&v13, &location);
      v9 = [v8 scheduledTimerWithTimeInterval:1 repeats:v12 block:8.0];
      v10 = *p_alternateTextTimer;
      *p_alternateTextTimer = v9;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
      return;
    }
  }

  else
  {
    v4 = 0;
    p_alternateTextTimer = &self->_alternateTextTimer;
    alternateTextTimer = self->_alternateTextTimer;
    v7 = alternateTextTimer == 0;
  }

  if (!v4 && !v7)
  {
    [(NSTimer *)alternateTextTimer invalidate];
    v11 = *p_alternateTextTimer;
    *p_alternateTextTimer = 0;

    [(_UIStatusBarStringView *)self setShowsAlternateText:0];
  }
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v3 = [UIAccessibilityHUDItem alloc];
  v4 = [(_UIStatusBarStringView *)self originalText];
  v5 = [(UIAccessibilityHUDItem *)v3 initWithTitle:v4 image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v5;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end