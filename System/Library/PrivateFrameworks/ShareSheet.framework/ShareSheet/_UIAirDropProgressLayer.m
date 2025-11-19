@interface _UIAirDropProgressLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (_UIAirDropProgressLayer)init;
- (_UIAirDropProgressLayer)initWithLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation _UIAirDropProgressLayer

- (_UIAirDropProgressLayer)init
{
  v7.receiver = self;
  v7.super_class = _UIAirDropProgressLayer;
  v2 = [(_UIAirDropProgressLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_oneFullRotation = 6.28318531;
    [(_UIAirDropProgressLayer *)v2 setNeedsDisplayOnBoundsChange:1];
    [(_UIAirDropProgressLayer *)v3 setAllowsEdgeAntialiasing:1];
    v4 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(_UIAirDropProgressLayer *)v3 setProgressColor:v4];

    v5 = [MEMORY[0x1E69DC888] systemFillColor];
    [(_UIAirDropProgressLayer *)v3 setProgressBackgroundColor:v5];

    [(_UIAirDropProgressLayer *)v3 setProgressLineWidth:2.0];
    [(_UIAirDropProgressLayer *)v3 setShowProgressTray:0];
  }

  return v3;
}

- (_UIAirDropProgressLayer)initWithLayer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIAirDropProgressLayer;
  v5 = [(_UIAirDropProgressLayer *)&v12 initWithLayer:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_oneFullRotation = 6.28318531;
      v6 = v4;
      -[_UIAirDropProgressLayer setNeedsDisplayOnBoundsChange:](v5, "setNeedsDisplayOnBoundsChange:", [v6 needsDisplayOnBoundsChange]);
      -[_UIAirDropProgressLayer setAllowsEdgeAntialiasing:](v5, "setAllowsEdgeAntialiasing:", [v6 allowsEdgeAntialiasing]);
      v7 = [v6 progressColor];
      [(_UIAirDropProgressLayer *)v5 setProgressColor:v7];

      v8 = [v6 progressBackgroundColor];
      [(_UIAirDropProgressLayer *)v5 setProgressBackgroundColor:v8];

      [v6 progressLineWidth];
      [(_UIAirDropProgressLayer *)v5 setProgressLineWidth:?];
      -[_UIAirDropProgressLayer setShowProgressTray:](v5, "setShowProgressTray:", [v6 showProgressTray]);
      [v6 progress];
      v10 = v9;

      [(_UIAirDropProgressLayer *)v5 setProgress:v10];
    }
  }

  return v5;
}

+ (BOOL)needsDisplayForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"progress"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS____UIAirDropProgressLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, v4);
  }

  return v5;
}

- (void)drawInContext:(CGContext *)a3
{
  [(_UIAirDropProgressLayer *)self bounds];
  v19 = CGRectInset(v18, self->_progressLineWidth, self->_progressLineWidth);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (v19.size.width >= v19.size.height)
  {
    v9 = v19.size.height;
  }

  else
  {
    v9 = v19.size.width;
  }

  v10 = (v9 - self->_progressLineWidth * 0.5 + 1.0) * 0.5;
  v11 = x;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidY = CGRectGetMidY(v20);
  oneFullRotation = self->_oneFullRotation;
  CGContextSetLineCap(a3, kCGLineCapButt);
  CGContextSetLineJoin(a3, kCGLineJoinMiter);
  CGContextSetLineWidth(a3, self->_progressLineWidth);
  if (self->_showProgressTray)
  {
    CGContextBeginPath(a3);
    CGContextAddArc(a3, MidX, MidY, v10, -1.57079633, oneFullRotation + -1.57079633, 0);
    CGContextSetStrokeColorWithColor(a3, [(UIColor *)self->_progressBackgroundColor CGColor]);
    CGContextStrokePath(a3);
  }

  CGContextBeginPath(a3);
  v15 = self->_oneFullRotation;
  [(_UIAirDropProgressLayer *)self progress];
  CGContextAddArc(a3, MidX, MidY, v10, -1.57079633, v15 * v16 + -1.57079633, 0);
  CGContextSetStrokeColorWithColor(a3, [(UIColor *)self->_progressColor CGColor]);

  CGContextStrokePath(a3);
}

@end