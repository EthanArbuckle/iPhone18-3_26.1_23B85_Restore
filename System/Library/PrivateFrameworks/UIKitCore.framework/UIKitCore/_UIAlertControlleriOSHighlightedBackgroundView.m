@interface _UIAlertControlleriOSHighlightedBackgroundView
- (_UIAlertControlleriOSHighlightedBackgroundView)initWithStyle:(int64_t)a3;
- (void)_configureWithStyle:(int64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setRoundedCornerPosition:(unint64_t)a3;
@end

@implementation _UIAlertControlleriOSHighlightedBackgroundView

- (_UIAlertControlleriOSHighlightedBackgroundView)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIAlertControlleriOSHighlightedBackgroundView;
  v4 = [(UIView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    [(_UIAlertControlleriOSHighlightedBackgroundView *)v4 _configureWithStyle:a3];
  }

  return v5;
}

- (void)_configureWithStyle:(int64_t)a3
{
  if (a3 == 1)
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
    v7 = [(UIVisualEffectView *)v5 contentView];
    [v7 setBackgroundColor:v6];

    [(UIView *)self bounds];
    [(UIView *)v5 setFrame:?];
    [(UIView *)v5 setAutoresizingMask:18];
    [(UIView *)v5 setHidden:1];
    [(UIView *)self addSubview:v5];
    effectView = self->_effectView;
    self->_effectView = v5;
  }
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(UIView *)self layer];
  [v4 setCornerRadius:a3];
}

- (void)setRoundedCornerPosition:(unint64_t)a3
{
  v4 = [(UIView *)self layer];
  [v4 setMaskedCorners:a3];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_style != 1)
  {
    self = self->_effectView;
  }

  [(UIView *)self setHidden:!a3];
}

@end