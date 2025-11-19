@interface ACM2SVDigitCodeView
- (ACM2SVDigitCodeView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setFillType:(int64_t)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation ACM2SVDigitCodeView

- (ACM2SVDigitCodeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ACM2SVDigitCodeView;
  v3 = [(ACM2SVDigitCodeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ACM2SVDigitCodeView *)v3 setFillType:0];
  }

  return v4;
}

- (void)dealloc
{
  [(ACM2SVDigitCodeView *)self setFillColor:0];
  v3.receiver = self;
  v3.super_class = ACM2SVDigitCodeView;
  [(ACM2SVDigitCodeView *)&v3 dealloc];
}

- (void)setFillType:(int64_t)a3
{
  if (self->_fillType != a3)
  {
    self->_fillType = a3;
    [(ACM2SVDigitCodeView *)self setNeedsDisplay];
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ACM2SVDigitCodeView;
  [(ACM2SVDigitCodeView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ACM2SVDigitCodeView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  v4 = MEMORY[0x29EDC7948];
  [(ACM2SVDigitCodeView *)self bounds:a3.origin.x];
  v5 = [v4 bezierPathWithRect:?];
  [-[ACM2SVDigitCodeView backgroundColor](self "backgroundColor")];
  [v5 fill];
  v6 = [(ACM2SVDigitCodeView *)self fillType];
  if (v6 == 1)
  {
    v10 = MEMORY[0x29EDC7948];
    [(ACM2SVDigitCodeView *)self bounds];
    v11 = (CGRectGetWidth(v16) + -10.0) * 0.5;
    [(ACM2SVDigitCodeView *)self bounds];
    v9 = [v10 bezierPathWithOvalInRect:{v11, (CGRectGetHeight(v17) + -10.0) * 0.5, 10.0, 10.0}];
  }

  else
  {
    if (v6)
    {
      return;
    }

    v7 = MEMORY[0x29EDC7948];
    [(ACM2SVDigitCodeView *)self bounds];
    v8 = (CGRectGetWidth(v14) + -10.0) * 0.5;
    [(ACM2SVDigitCodeView *)self bounds];
    v9 = [v7 bezierPathWithRect:{v8, (CGRectGetHeight(v15) + -2.0) * 0.5, 10.0, 2.0}];
  }

  v12 = v9;
  if (v9)
  {
    [(UIColor *)[(ACM2SVDigitCodeView *)self fillColor] setFill];

    [v12 fill];
  }
}

@end