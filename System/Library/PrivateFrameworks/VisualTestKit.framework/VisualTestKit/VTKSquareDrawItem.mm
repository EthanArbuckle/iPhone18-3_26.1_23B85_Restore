@interface VTKSquareDrawItem
- (CGRect)frame;
- (id)initWitColor:(id)a3 frame:(CGRect)a4;
- (void)drawAtContext:(id)a3;
@end

@implementation VTKSquareDrawItem

- (id)initWitColor:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v16.receiver = self;
  v16.super_class = VTKSquareDrawItem;
  v11 = [(VTKSquareDrawItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_color, a3);
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

- (void)drawAtContext:(id)a3
{
  v4 = [a3 CGContext];
  CGContextBeginPath(v4);
  [(VTKSquareDrawItem *)self frame];
  CGContextAddRect(v4, v8);
  v5 = VTKMainScreenScale();
  CGContextSetLineWidth(v4, 1.0 / v5);
  v6 = [(VTKSquareDrawItem *)self color];
  CGContextSetStrokeColorWithColor(v4, [v6 CGColor]);

  CGContextStrokePath(v4);
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