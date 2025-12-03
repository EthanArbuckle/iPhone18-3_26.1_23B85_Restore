@interface _UIAlertControlleriOSHighlightedBackgroundView
- (_UIAlertControlleriOSHighlightedBackgroundView)initWithStyle:(int64_t)style;
- (void)_configureWithStyle:(int64_t)style;
- (void)setCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRoundedCornerPosition:(unint64_t)position;
@end

@implementation _UIAlertControlleriOSHighlightedBackgroundView

- (_UIAlertControlleriOSHighlightedBackgroundView)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = _UIAlertControlleriOSHighlightedBackgroundView;
  v4 = [(UIView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    [(_UIAlertControlleriOSHighlightedBackgroundView *)v4 _configureWithStyle:style];
  }

  return v5;
}

- (void)_configureWithStyle:(int64_t)style
{
  if (style == 1)
  {
    [(UIView *)self setHidden:?];
    v9 = +[UIColor whiteColor];
    [(UIView *)self setBackgroundColor:?];
  }

  else
  {
    v9 = [UIBlurEffect effectWithStyle:1200];
    v4 = [UIVibrancyEffect _effectForBlurEffect:"_effectForBlurEffect:vibrancyStyle:" vibrancyStyle:?];
    v5 = [[UIVisualEffectView alloc] initWithEffect:v4];
    v6 = +[UIColor whiteColor];
    contentView = [(UIVisualEffectView *)v5 contentView];
    [contentView setBackgroundColor:v6];

    [(UIView *)self bounds];
    [(UIView *)v5 setFrame:?];
    [(UIView *)v5 setAutoresizingMask:18];
    [(UIView *)v5 setHidden:1];
    [(UIView *)self addSubview:v5];
    effectView = self->_effectView;
    self->_effectView = v5;
  }
}

- (void)setCornerRadius:(double)radius
{
  layer = [(UIView *)self layer];
  [layer setCornerRadius:radius];
}

- (void)setRoundedCornerPosition:(unint64_t)position
{
  layer = [(UIView *)self layer];
  [layer setMaskedCorners:position];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_style != 1)
  {
    self = self->_effectView;
  }

  [(UIView *)self setHidden:!highlighted];
}

@end