@interface _UICircleProgressLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (_UICircleProgressLayer)init;
- (_UICircleProgressLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation _UICircleProgressLayer

- (_UICircleProgressLayer)init
{
  v7.receiver = self;
  v7.super_class = _UICircleProgressLayer;
  v2 = [(_UICircleProgressLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_oneFullRotation = 6.28318531;
    [(_UICircleProgressLayer *)v2 setNeedsDisplayOnBoundsChange:1];
    [(_UICircleProgressLayer *)v3 setAllowsEdgeAntialiasing:1];
    [(_UICircleProgressLayer *)v3 setProgressStartPoint:0];
    v4 = +[UIColor systemBlueColor];
    [(_UICircleProgressLayer *)v3 setProgressColor:v4];

    v5 = [UIColor colorWithWhite:0.78 alpha:1.0];
    [(_UICircleProgressLayer *)v3 setProgressBackgroundColor:v5];

    [(_UICircleProgressLayer *)v3 setProgressLineWidth:2.0];
    [(_UICircleProgressLayer *)v3 setShowProgressTray:0];
  }

  return v3;
}

- (_UICircleProgressLayer)initWithLayer:(id)layer
{
  layerCopy = layer;
  v12.receiver = self;
  v12.super_class = _UICircleProgressLayer;
  v5 = [(_UICircleProgressLayer *)&v12 initWithLayer:layerCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_oneFullRotation = 6.28318531;
      v6 = layerCopy;
      -[_UICircleProgressLayer setNeedsDisplayOnBoundsChange:](v5, "setNeedsDisplayOnBoundsChange:", [v6 needsDisplayOnBoundsChange]);
      -[_UICircleProgressLayer setAllowsEdgeAntialiasing:](v5, "setAllowsEdgeAntialiasing:", [v6 allowsEdgeAntialiasing]);
      -[_UICircleProgressLayer setProgressStartPoint:](v5, "setProgressStartPoint:", [v6 progressStartPoint]);
      progressColor = [v6 progressColor];
      [(_UICircleProgressLayer *)v5 setProgressColor:progressColor];

      progressBackgroundColor = [v6 progressBackgroundColor];
      [(_UICircleProgressLayer *)v5 setProgressBackgroundColor:progressBackgroundColor];

      [v6 progressLineWidth];
      [(_UICircleProgressLayer *)v5 setProgressLineWidth:?];
      -[_UICircleProgressLayer setShowProgressTray:](v5, "setShowProgressTray:", [v6 showProgressTray]);
      [v6 progress];
      v10 = v9;

      [(_UICircleProgressLayer *)v5 setProgress:v10];
    }
  }

  return v5;
}

+ (BOOL)needsDisplayForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"progress"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS____UICircleProgressLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, keyCopy);
  }

  return v5;
}

- (void)drawInContext:(CGContext *)context
{
  [(_UICircleProgressLayer *)self bounds];
  v21 = CGRectInset(v20, self->_progressLineWidth, self->_progressLineWidth);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  if (v21.size.width >= v21.size.height)
  {
    v9 = v21.size.height;
  }

  else
  {
    v9 = v21.size.width;
  }

  v10 = v9 - self->_progressLineWidth * 0.5 + 1.0;
  v11 = y;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidY = CGRectGetMidY(v22);
  v14 = self->_progressStartPoint - 1;
  if (v14 > 2)
  {
    v15 = -1.57079633;
  }

  else
  {
    v15 = dbl_18A679960[v14];
  }

  oneFullRotation = self->_oneFullRotation;
  CGContextSetLineCap(context, kCGLineCapButt);
  CGContextSetLineJoin(context, kCGLineJoinMiter);
  CGContextSetLineWidth(context, self->_progressLineWidth);
  if (self->_showProgressTray)
  {
    CGContextBeginPath(context);
    CGContextAddArc(context, MidX, MidY, v10 * 0.5, v15, v15 + oneFullRotation, 0);
    CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_progressBackgroundColor CGColor]);
    CGContextStrokePath(context);
  }

  CGContextBeginPath(context);
  v17 = self->_oneFullRotation;
  [(_UICircleProgressLayer *)self progress];
  CGContextAddArc(context, MidX, MidY, v10 * 0.5, v15, v15 + v17 * v18, 0);
  CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_progressColor CGColor]);

  CGContextStrokePath(context);
}

@end