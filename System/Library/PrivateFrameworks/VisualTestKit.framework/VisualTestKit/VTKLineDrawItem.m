@interface VTKLineDrawItem
- (CGPoint)origin;
- (id)initWitColor:(id)a3 origin:(CGPoint)a4 orientation:(int64_t)a5;
- (void)drawAtContext:(id)a3;
@end

@implementation VTKLineDrawItem

- (id)initWitColor:(id)a3 origin:(CGPoint)a4 orientation:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v13.receiver = self;
  v13.super_class = VTKLineDrawItem;
  v11 = [(VTKLineDrawItem *)&v13 init];
  if (v11)
  {
    if (a5 == 1)
    {
      y = y + 1.0 / VTKMainScreenScale() * 0.5;
      x = 0.0;
    }

    else if (!a5)
    {
      x = x + 1.0 / VTKMainScreenScale() * 0.5;
      y = 0.0;
    }

    objc_storeStrong(&v11->_color, a3);
    v11->_origin.x = x;
    v11->_origin.y = y;
    v11->_orientation = a5;
  }

  return v11;
}

- (void)drawAtContext:(id)a3
{
  v17 = a3;
  v4 = [(VTKLineDrawItem *)self orientation];
  if (v4 == 1)
  {
    [v17 width];
    v6 = v9;
    [(VTKLineDrawItem *)self origin];
    v5 = v10;
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    if (!v4)
    {
      [(VTKLineDrawItem *)self origin];
      v6 = v7;
      [v17 height];
      v5 = v8;
    }
  }

  v11 = [v17 CGContext];
  CGContextBeginPath(v11);
  [(VTKLineDrawItem *)self origin];
  v13 = v12;
  [(VTKLineDrawItem *)self origin];
  CGContextMoveToPoint(v11, v13, v14);
  CGContextAddLineToPoint(v11, v6, v5);
  v15 = VTKMainScreenScale();
  CGContextSetLineWidth(v11, 1.0 / v15);
  v16 = [(VTKLineDrawItem *)self color];
  CGContextSetStrokeColorWithColor(v11, [v16 CGColor]);

  CGContextStrokePath(v11);
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end