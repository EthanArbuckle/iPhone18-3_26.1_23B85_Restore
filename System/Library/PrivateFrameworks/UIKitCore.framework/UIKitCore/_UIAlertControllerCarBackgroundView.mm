@interface _UIAlertControllerCarBackgroundView
- (_UIAlertControllerCarBackgroundView)initWithFrame:(CGRect)frame;
- (id)_colorForInterfaceStyle:(int64_t)style;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRoundedCornerPosition:(unint64_t)position;
@end

@implementation _UIAlertControllerCarBackgroundView

- (_UIAlertControllerCarBackgroundView)initWithFrame:(CGRect)frame
{
  v25[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = _UIAlertControllerCarBackgroundView;
  v3 = [(UIView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    topAnchor = [(UIView *)v4 topAnchor];
    topAnchor2 = [(UIView *)v3 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[0] = v18;
    leftAnchor = [(UIView *)v4 leftAnchor];
    leftAnchor2 = [(UIView *)v3 leftAnchor];
    v6 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v24[1] = v6;
    rightAnchor = [(UIView *)v4 rightAnchor];
    rightAnchor2 = [(UIView *)v3 rightAnchor];
    v9 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[2] = v9;
    bottomAnchor = [(UIView *)v4 bottomAnchor];
    bottomAnchor2 = [(UIView *)v3 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    traitCollection = [(UIView *)self traitCollection];
    v5 = -[_UIAlertControllerCarBackgroundView _colorForInterfaceStyle:](self, "_colorForInterfaceStyle:", [traitCollection userInterfaceStyle]);
    [(UIView *)self setBackgroundColor:v5];
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
  if (self->_isHighlighted != highlighted)
  {
    if (_UISolariumEnabled())
    {
      fillColor = [(_UIAlertControllerCarBackgroundView *)self fillColor];
      highlightColor = [(_UIAlertControllerCarBackgroundView *)self highlightColor];

      if (fillColor != highlightColor)
      {
        if (highlighted)
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

    self->_isHighlighted = highlighted;
  }
}

- (id)_colorForInterfaceStyle:(int64_t)style
{
  if (style == 1)
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