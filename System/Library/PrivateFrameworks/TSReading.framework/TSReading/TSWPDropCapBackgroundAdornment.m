@interface TSWPDropCapBackgroundAdornment
- (TSWPDropCapBackgroundAdornment)initWithColor:(id)a3 bounds:(CGRect)a4;
- (void)dealloc;
- (void)drawAdornmentForFragment:(const void *)a3 inContext:(CGContext *)a4 withFlags:(unsigned int)a5 state:(const void *)a6 bounds:(CGRect)a7;
@end

@implementation TSWPDropCapBackgroundAdornment

- (TSWPDropCapBackgroundAdornment)initWithColor:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11.receiver = self;
  v11.super_class = TSWPDropCapBackgroundAdornment;
  v9 = [(TSWPDropCapBackgroundAdornment *)&v11 init];
  if (v9)
  {
    v9->_color = [a3 copy];
    v9->_bounds.origin.x = x;
    v9->_bounds.origin.y = y;
    v9->_bounds.size.width = width;
    v9->_bounds.size.height = height;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPDropCapBackgroundAdornment;
  [(TSWPDropCapBackgroundAdornment *)&v3 dealloc];
}

- (void)drawAdornmentForFragment:(const void *)a3 inContext:(CGContext *)a4 withFlags:(unsigned int)a5 state:(const void *)a6 bounds:(CGRect)a7
{
  y = a7.origin.y;
  x = a7.origin.x;
  CGContextSetFillColorWithColor(a4, [(TSUColor *)self->_color CGColor:a3]);
  v12 = CGRectOffset(self->_bounds, x, y);

  CGContextFillRect(a4, v12);
}

@end