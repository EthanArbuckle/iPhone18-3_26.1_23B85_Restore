@interface PSLegendColorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PSLegendColorView)initWithColor:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation PSLegendColorView

- (PSLegendColorView)initWithColor:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PSLegendColorView;
  v6 = [(PSLegendColorView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
    [(PSLegendColorView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(PSLegendColorView *)v7 setBackgroundColor:v8];
  }

  return v7;
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(PSLegendColorView *)self traitCollection:a3.origin.x];
  v5 = [v4 userInterfaceStyle];

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = MEMORY[0x1E69DC728];
  [(PSLegendColorView *)self bounds];
  v13 = [v7 bezierPathWithOvalInRect:?];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v8 setFill];

  [v13 fill];
  color = self->_color;
  if (color)
  {
    v10 = color;
  }

  else
  {
    if (v5 == 2)
    {
      [MEMORY[0x1E69DC888] systemDarkMidGrayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemMidGrayColor];
    }
    v10 = ;
  }

  v11 = v10;
  [(UIColor *)v10 setFill];
  [v13 fill];
  if (v5 == 2)
  {
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [v12 setFill];
    [v13 fill];
  }

  CGContextRestoreGState(CurrentContext);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD08], a3.width, a3.height}];
  [v3 xHeight];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end