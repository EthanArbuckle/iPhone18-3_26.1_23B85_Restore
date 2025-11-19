@interface _UIGlintyGradientView
- (_UIGlintyGradientView)initWithFrame:(CGRect)a3;
@end

@implementation _UIGlintyGradientView

- (_UIGlintyGradientView)initWithFrame:(CGRect)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UIGlintyGradientView;
  v3 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIColor colorWithWhite:0.05 alpha:1.0];
    v5 = [UIColor colorWithWhite:0.95 alpha:1.0];
    v6 = [(_UIGlintyGradientView *)v3 gradientLayer];
    v11[0] = [v4 CGColor];
    v11[1] = [v5 CGColor];
    v11[2] = [v4 CGColor];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
    [v6 setColors:v7];

    [v6 setStartPoint:{0.5, 0.0}];
    [v6 setEndPoint:{0.5, 1.0}];
    v8 = v3;
  }

  return v3;
}

@end