@interface PSLegendColorView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PSLegendColorView)initWithColor:(id)color;
- (void)drawRect:(CGRect)rect;
@end

@implementation PSLegendColorView

- (PSLegendColorView)initWithColor:(id)color
{
  colorCopy = color;
  v10.receiver = self;
  v10.super_class = PSLegendColorView;
  v6 = [(PSLegendColorView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
    [(PSLegendColorView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PSLegendColorView *)v7 setBackgroundColor:clearColor];
  }

  return v7;
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(PSLegendColorView *)self traitCollection:rect.origin.x];
  userInterfaceStyle = [v4 userInterfaceStyle];

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = MEMORY[0x1E69DC728];
  [(PSLegendColorView *)self bounds];
  v13 = [v7 bezierPathWithOvalInRect:?];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [clearColor setFill];

  [v13 fill];
  color = self->_color;
  if (color)
  {
    v10 = color;
  }

  else
  {
    if (userInterfaceStyle == 2)
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
  if (userInterfaceStyle == 2)
  {
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [v12 setFill];
    [v13 fill];
  }

  CGContextRestoreGState(CurrentContext);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD08], fits.width, fits.height}];
  [v3 xHeight];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end