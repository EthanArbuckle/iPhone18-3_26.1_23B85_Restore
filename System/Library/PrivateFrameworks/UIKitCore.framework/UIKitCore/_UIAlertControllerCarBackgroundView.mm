@interface _UIAlertControllerCarBackgroundView
- (_UIAlertControllerCarBackgroundView)initWithFrame:(CGRect)a3;
- (id)_colorForInterfaceStyle:(int64_t)a3;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setRoundedCornerPosition:(unint64_t)a3;
@end

@implementation _UIAlertControllerCarBackgroundView

- (_UIAlertControllerCarBackgroundView)initWithFrame:(CGRect)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = _UIAlertControllerCarBackgroundView;
  v3 = [(UIView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIVisualEffectView);
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [UIColorEffect colorEffectSaturate:1.5];
    v21 = [UIBlurEffect effectWithBlurRadius:10.0];
    v25[0] = v22;
    v25[1] = v21;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [(UIVisualEffectView *)v4 setBackgroundEffects:v5];

    [(UIView *)v3 addSubview:v4];
    v15 = MEMORY[0x1E69977A0];
    v20 = [(UIView *)v4 topAnchor];
    v19 = [(UIView *)v3 topAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v24[0] = v18;
    v17 = [(UIView *)v4 leftAnchor];
    v16 = [(UIView *)v3 leftAnchor];
    v6 = [v17 constraintEqualToAnchor:v16];
    v24[1] = v6;
    v7 = [(UIView *)v4 rightAnchor];
    v8 = [(UIView *)v3 rightAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v24[2] = v9;
    v10 = [(UIView *)v4 bottomAnchor];
    v11 = [(UIView *)v3 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v24[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v15 activateConstraints:v13];
  }

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _UIAlertControllerCarBackgroundView;
  [(UIView *)&v6 layoutSubviews];
  if (_UISolariumEnabled())
  {
    [(UIView *)self frame];
    [(_UIAlertControllerCarBackgroundView *)self setCornerRadius:v3 * 0.5];
    [(UIView *)self setClipsToBounds:1];
  }

  else
  {
    v4 = [(UIView *)self traitCollection];
    v5 = -[_UIAlertControllerCarBackgroundView _colorForInterfaceStyle:](self, "_colorForInterfaceStyle:", [v4 userInterfaceStyle]);
    [(UIView *)self setBackgroundColor:v5];
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
  if (self->_isHighlighted != a3)
  {
    if (_UISolariumEnabled())
    {
      v5 = [(_UIAlertControllerCarBackgroundView *)self fillColor];
      v6 = [(_UIAlertControllerCarBackgroundView *)self highlightColor];

      if (v5 != v6)
      {
        if (a3)
        {
          [(_UIAlertControllerCarBackgroundView *)self highlightColor];
        }

        else
        {
          [(_UIAlertControllerCarBackgroundView *)self fillColor];
        }
        v7 = ;
        [(UIView *)self setBackgroundColor:v7];
      }
    }

    self->_isHighlighted = a3;
  }
}

- (id)_colorForInterfaceStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0.964705882;
  }

  else
  {
    v3 = 0.250980392;
  }

  v4 = [UIColor colorWithRed:v3 green:v3 blue:v3 alpha:0.9];

  return v4;
}

@end