@interface VTKSquareDrawItem
- (CGRect)frame;
- (id)initWitColor:(id)color frame:(CGRect)frame;
- (void)drawAtContext:(id)context;
@end

@implementation VTKSquareDrawItem

- (id)initWitColor:(id)color frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = VTKSquareDrawItem;
  v11 = [(VTKSquareDrawItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_color, color);
    v13 = 1.0 / VTKMainScreenScale() * 0.5;
    v14 = 1.0 / VTKMainScreenScale() * 0.5;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v12->_frame = CGRectInset(v17, v13, v14);
  }

  return v12;
}

- (void)drawAtContext:(id)context
{
  cGContext = [context CGContext];
  CGContextBeginPath(cGContext);
  [(VTKSquareDrawItem *)self frame];
  CGContextAddRect(cGContext, v8);
  v5 = VTKMainScreenScale();
  CGContextSetLineWidth(cGContext, 1.0 / v5);
  color = [(VTKSquareDrawItem *)self color];
  CGContextSetStrokeColorWithColor(cGContext, [color CGColor]);

  CGContextStrokePath(cGContext);
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end