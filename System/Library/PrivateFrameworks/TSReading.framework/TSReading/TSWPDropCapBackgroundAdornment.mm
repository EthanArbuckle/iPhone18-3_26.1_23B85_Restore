@interface TSWPDropCapBackgroundAdornment
- (TSWPDropCapBackgroundAdornment)initWithColor:(id)color bounds:(CGRect)bounds;
- (void)dealloc;
- (void)drawAdornmentForFragment:(const void *)fragment inContext:(CGContext *)context withFlags:(unsigned int)flags state:(const void *)state bounds:(CGRect)bounds;
@end

@implementation TSWPDropCapBackgroundAdornment

- (TSWPDropCapBackgroundAdornment)initWithColor:(id)color bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11.receiver = self;
  v11.super_class = TSWPDropCapBackgroundAdornment;
  v9 = [(TSWPDropCapBackgroundAdornment *)&v11 init];
  if (v9)
  {
    v9->_color = [color copy];
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

- (void)drawAdornmentForFragment:(const void *)fragment inContext:(CGContext *)context withFlags:(unsigned int)flags state:(const void *)state bounds:(CGRect)bounds
{
  y = bounds.origin.y;
  x = bounds.origin.x;
  CGContextSetFillColorWithColor(context, [(TSUColor *)self->_color CGColor:fragment]);
  v12 = CGRectOffset(self->_bounds, x, y);

  CGContextFillRect(context, v12);
}

@end