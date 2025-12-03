@interface SFCircleProgressLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (SFCircleProgressLayer)init;
- (SFCircleProgressLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation SFCircleProgressLayer

- (SFCircleProgressLayer)init
{
  v9.receiver = self;
  v9.super_class = SFCircleProgressLayer;
  v2 = [(SFCircleProgressLayer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_oneFullRotation = 6.28318531;
    [(SFCircleProgressLayer *)v2 setNeedsDisplayOnBoundsChange:1];
    [(SFCircleProgressLayer *)v3 setAllowsEdgeAntialiasing:1];
    [(SFCircleProgressLayer *)v3 setProgressStartPoint:0];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(SFCircleProgressLayer *)v3 setProgressColor:systemBlueColor];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      [MEMORY[0x1E69DC888] secondarySystemFillColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemFillColor];
    }
    v7 = ;
    [(SFCircleProgressLayer *)v3 setProgressBackgroundColor:v7];

    [(SFCircleProgressLayer *)v3 setProgressLineWidth:2.0];
    [(SFCircleProgressLayer *)v3 setShowProgressTray:0];
  }

  return v3;
}

- (SFCircleProgressLayer)initWithLayer:(id)layer
{
  layerCopy = layer;
  v12.receiver = self;
  v12.super_class = SFCircleProgressLayer;
  v5 = [(SFCircleProgressLayer *)&v12 initWithLayer:layerCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_oneFullRotation = 6.28318531;
      v6 = layerCopy;
      -[SFCircleProgressLayer setNeedsDisplayOnBoundsChange:](v5, "setNeedsDisplayOnBoundsChange:", [v6 needsDisplayOnBoundsChange]);
      -[SFCircleProgressLayer setAllowsEdgeAntialiasing:](v5, "setAllowsEdgeAntialiasing:", [v6 allowsEdgeAntialiasing]);
      -[SFCircleProgressLayer setProgressStartPoint:](v5, "setProgressStartPoint:", [v6 progressStartPoint]);
      progressColor = [v6 progressColor];
      [(SFCircleProgressLayer *)v5 setProgressColor:progressColor];

      progressBackgroundColor = [v6 progressBackgroundColor];
      [(SFCircleProgressLayer *)v5 setProgressBackgroundColor:progressBackgroundColor];

      [v6 progressLineWidth];
      [(SFCircleProgressLayer *)v5 setProgressLineWidth:?];
      -[SFCircleProgressLayer setUsesRoundedLineCap:](v5, "setUsesRoundedLineCap:", [v6 usesRoundedLineCap]);
      -[SFCircleProgressLayer setShowProgressTray:](v5, "setShowProgressTray:", [v6 showProgressTray]);
      [v6 progress];
      v10 = v9;

      [(SFCircleProgressLayer *)v5 setProgress:v10];
    }
  }

  return v5;
}

+ (BOOL)needsDisplayForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"progress"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"progressLineWidth") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"showProgressTray") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"usesRoundedLineCap"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SFCircleProgressLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, keyCopy);
  }

  return v5;
}

- (void)drawInContext:(CGContext *)context
{
  [(SFCircleProgressLayer *)self bounds];
  v22 = CGRectInset(v21, self->_progressLineWidth, self->_progressLineWidth);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  if (v22.size.width >= v22.size.height)
  {
    v9 = v22.size.height;
  }

  else
  {
    v9 = v22.size.width;
  }

  v10 = v9 - self->_progressLineWidth * 0.5 + 1.0;
  v11 = y;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  v14 = self->_progressStartPoint - 1;
  if (v14 > 2)
  {
    v15 = -1.57079633;
  }

  else
  {
    v15 = dbl_1B9EDE9C0[v14];
  }

  oneFullRotation = self->_oneFullRotation;
  usesRoundedLineCap = self->_usesRoundedLineCap;
  CGContextSetLineCap(context, usesRoundedLineCap);
  CGContextSetLineJoin(context, usesRoundedLineCap);
  CGContextSetLineWidth(context, self->_progressLineWidth);
  if (self->_showProgressTray)
  {
    CGContextBeginPath(context);
    CGContextAddArc(context, MidX, MidY, v10 * 0.5, v15, v15 + oneFullRotation, 0);
    CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_progressBackgroundColor CGColor]);
    CGContextStrokePath(context);
  }

  CGContextBeginPath(context);
  v18 = self->_oneFullRotation;
  [(SFCircleProgressLayer *)self progress];
  CGContextAddArc(context, MidX, MidY, v10 * 0.5, v15, v15 + v18 * v19, 0);
  CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_progressColor CGColor]);

  CGContextStrokePath(context);
}

@end