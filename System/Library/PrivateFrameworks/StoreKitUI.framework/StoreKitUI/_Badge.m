@interface _Badge
- (CGSize)sizeThatFits:(CGSize)a3;
- (_Badge)initWithText:(id)a3;
- (void)drawTextInRect:(CGRect)a3;
- (void)setText:(id)a3;
@end

@implementation _Badge

- (_Badge)initWithText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _Badge;
  v5 = [(_Badge *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    [(_Badge *)v5 setTextColor:v6];

    v7 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(_Badge *)v5 setFont:v7];

    [(_Badge *)v5 setTextAlignment:1];
    [(_Badge *)v5 setText:v4];
  }

  return v5;
}

- (void)setText:(id)a3
{
  v10.receiver = self;
  v10.super_class = _Badge;
  [(_Badge *)&v10 setText:a3];
  [(_Badge *)self frame];
  v5 = v4;
  v7 = v6;
  [(_Badge *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(_Badge *)self setFrame:v5, v7, v8, v9];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v11.receiver = self;
  v11.super_class = _Badge;
  [(_Badge *)&v11 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v6 = [(_Badge *)self text];
  v7 = [v6 length];

  v8 = 18.0;
  if (v7 >= 2)
  {
    v9 = v5 + 10.0;
    if (v5 + 10.0 < 24.0)
    {
      v9 = 24.0;
    }

    v8 = fmin(v9, 44.0);
  }

  v10 = 18.0;
  result.height = v10;
  result.width = v8;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v9 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  [v9 set];

  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v10 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, CGRectGetHeight(v12) * 0.5}];
  [v10 fill];

  CGContextRestoreGState(CurrentContext);
  v11.receiver = self;
  v11.super_class = _Badge;
  [(_Badge *)&v11 drawTextInRect:x + 5.0, y + 0.0, width + -10.0, height];
}

@end