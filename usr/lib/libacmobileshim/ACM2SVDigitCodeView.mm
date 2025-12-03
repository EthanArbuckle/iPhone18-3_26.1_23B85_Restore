@interface ACM2SVDigitCodeView
- (ACM2SVDigitCodeView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setFillType:(int64_t)type;
- (void)setFrame:(CGRect)frame;
@end

@implementation ACM2SVDigitCodeView

- (ACM2SVDigitCodeView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ACM2SVDigitCodeView;
  v3 = [(ACM2SVDigitCodeView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setFillType:(int64_t)type
{
  if (self->_fillType != type)
  {
    self->_fillType = type;
    [(ACM2SVDigitCodeView *)self setNeedsDisplay];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ACM2SVDigitCodeView;
  [(ACM2SVDigitCodeView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ACM2SVDigitCodeView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  v4 = MEMORY[0x29EDC7948];
  [(ACM2SVDigitCodeView *)self bounds:rect.origin.x];
  v5 = [v4 bezierPathWithRect:?];
  [-[ACM2SVDigitCodeView backgroundColor](self "backgroundColor")];
  [v5 fill];
  fillType = [(ACM2SVDigitCodeView *)self fillType];
  if (fillType == 1)
  {
    v10 = MEMORY[0x29EDC7948];
    [(ACM2SVDigitCodeView *)self bounds];
    v11 = (CGRectGetWidth(v16) + -10.0) * 0.5;
    [(ACM2SVDigitCodeView *)self bounds];
    v9 = [v10 bezierPathWithOvalInRect:{v11, (CGRectGetHeight(v17) + -10.0) * 0.5, 10.0, 10.0}];
  }

  else
  {
    if (fillType)
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