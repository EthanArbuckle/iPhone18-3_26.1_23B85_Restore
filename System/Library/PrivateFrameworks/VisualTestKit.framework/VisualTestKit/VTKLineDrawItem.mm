@interface VTKLineDrawItem
- (CGPoint)origin;
- (id)initWitColor:(id)color origin:(CGPoint)origin orientation:(int64_t)orientation;
- (void)drawAtContext:(id)context;
@end

@implementation VTKLineDrawItem

- (id)initWitColor:(id)color origin:(CGPoint)origin orientation:(int64_t)orientation
{
  y = origin.y;
  x = origin.x;
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = VTKLineDrawItem;
  v11 = [(VTKLineDrawItem *)&v13 init];
  if (v11)
  {
    if (orientation == 1)
    {
      y = y + 1.0 / VTKMainScreenScale() * 0.5;
      x = 0.0;
    }

    else if (!orientation)
    {
      x = x + 1.0 / VTKMainScreenScale() * 0.5;
      y = 0.0;
    }

    objc_storeStrong(&v11->_color, color);
    v11->_origin.x = x;
    v11->_origin.y = y;
    v11->_orientation = orientation;
  }

  return v11;
}

- (void)drawAtContext:(id)context
{
  contextCopy = context;
  orientation = [(VTKLineDrawItem *)self orientation];
  if (orientation == 1)
  {
    [contextCopy width];
    v6 = v9;
    [(VTKLineDrawItem *)self origin];
    v5 = v10;
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    if (!orientation)
    {
      [(VTKLineDrawItem *)self origin];
      v6 = v7;
      [contextCopy height];
      v5 = v8;
    }
  }

  cGContext = [contextCopy CGContext];
  CGContextBeginPath(cGContext);
  [(VTKLineDrawItem *)self origin];
  v13 = v12;
  [(VTKLineDrawItem *)self origin];
  CGContextMoveToPoint(cGContext, v13, v14);
  CGContextAddLineToPoint(cGContext, v6, v5);
  v15 = VTKMainScreenScale();
  CGContextSetLineWidth(cGContext, 1.0 / v15);
  color = [(VTKLineDrawItem *)self color];
  CGContextSetStrokeColorWithColor(cGContext, [color CGColor]);

  CGContextStrokePath(cGContext);
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