@interface UIFocusRingDefaultShapeLayer
+ (id)focusLayerForUserInterfaceStyle:(int64_t)style;
+ (id)parentLayerForUserInterfaceStyle:(int64_t)style;
- (UIFocusRingDefaultShapeLayer)init;
@end

@implementation UIFocusRingDefaultShapeLayer

- (UIFocusRingDefaultShapeLayer)init
{
  v6.receiver = self;
  v6.super_class = UIFocusRingDefaultShapeLayer;
  v2 = [(UIFocusRingDefaultShapeLayer *)&v6 init];
  if (v2)
  {
    v3 = +[UIColor keyboardFocusIndicatorColor];
    if ([UIApp _effectiveUserInterfaceStyle] == 2)
    {
      v4 = +[UIColor whiteColor];

      v3 = v4;
    }

    -[UIFocusRingDefaultShapeLayer setBorderColor:](v2, "setBorderColor:", [v3 CGColor]);
    -[UIFocusRingDefaultShapeLayer setStrokeColor:](v2, "setStrokeColor:", [v3 CGColor]);
    [(UIFocusRingDefaultShapeLayer *)v2 setShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(UIFocusRingDefaultShapeLayer *)v2 setFillColor:0];
    +[UIFocusRingStyle cornerRadius];
    [(UIFocusRingDefaultShapeLayer *)v2 setCornerRadius:?];
    [(UIFocusRingDefaultShapeLayer *)v2 setLineJoin:*MEMORY[0x1E6979E98]];
    [(UIFocusRingDefaultShapeLayer *)v2 setLineCap:*MEMORY[0x1E6979E78]];
  }

  return v2;
}

+ (id)focusLayerForUserInterfaceStyle:(int64_t)style
{
  layer = [self layer];
  +[UIFocusRingStyle borderThickness];
  [layer setBorderWidth:?];
  +[UIFocusRingStyle borderThickness];
  [layer setLineWidth:?];

  return layer;
}

+ (id)parentLayerForUserInterfaceStyle:(int64_t)style
{
  layer = [self layer];
  +[UIFocusRingStyle childrenFocusedBorderThickness];
  [layer setBorderWidth:?];
  +[UIFocusRingStyle childrenFocusedBorderThickness];
  [layer setLineWidth:?];

  return layer;
}

@end