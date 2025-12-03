@interface UIKBMultilingualIntroductionArrowView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (UIKBMultilingualIntroductionArrowView)init;
- (void)_updatePath;
- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
@end

@implementation UIKBMultilingualIntroductionArrowView

- (UIKBMultilingualIntroductionArrowView)init
{
  v16.receiver = self;
  v16.super_class = UIKBMultilingualIntroductionArrowView;
  v2 = [(UIView *)&v16 init];
  v3 = v2;
  if (v2)
  {
    _inheritedRenderConfig = [(UIView *)v2 _inheritedRenderConfig];
    lightKeyboard = [_inheritedRenderConfig lightKeyboard];
    v6 = 0.35;
    if (lightKeyboard)
    {
      v6 = 0.65;
    }

    v7 = [UIColor colorWithWhite:v6 alpha:1.0];
    v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
    arrowTailLayer = v3->_arrowTailLayer;
    v3->_arrowTailLayer = v8;

    v10 = +[UIColor clearColor];
    -[CAShapeLayer setFillColor:](v3->_arrowTailLayer, "setFillColor:", [v10 CGColor]);

    -[CAShapeLayer setStrokeColor:](v3->_arrowTailLayer, "setStrokeColor:", [v7 CGColor]);
    v11 = objc_alloc_init(MEMORY[0x1E69794A0]);
    arrowHeadLayer = v3->_arrowHeadLayer;
    v3->_arrowHeadLayer = v11;

    -[CAShapeLayer setFillColor:](v3->_arrowHeadLayer, "setFillColor:", [v7 CGColor]);
    -[CAShapeLayer setStrokeColor:](v3->_arrowHeadLayer, "setStrokeColor:", [v7 CGColor]);
    [(UIView *)v3 setUserInteractionEnabled:0];
    layer = [(UIView *)v3 layer];
    [layer addSublayer:v3->_arrowTailLayer];

    layer2 = [(UIView *)v3 layer];
    [layer2 addSublayer:v3->_arrowHeadLayer];
  }

  return v3;
}

- (void)setStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  self->_startPoint = point;
  self->_endPoint = endPoint;
  [(UIKBMultilingualIntroductionArrowView *)self _updatePath];
}

- (void)_updatePath
{
  v11 = +[UIBezierPath bezierPath];
  [v11 moveToPoint:{self->_startPoint.x, self->_startPoint.y}];
  [v11 addCurveToPoint:self->_endPoint.x controlPoint1:self->_endPoint.y + 3.0 controlPoint2:{self->_startPoint.x + (self->_endPoint.x - self->_startPoint.x) * 0.5, self->_startPoint.y + -5.0, self->_endPoint.x, self->_startPoint.y - (self->_startPoint.y - self->_endPoint.y) / 3.0}];
  v3 = v11;
  -[CAShapeLayer setPath:](self->_arrowTailLayer, "setPath:", [v11 CGPath]);
  v4 = +[UIBezierPath bezierPath];
  [(UIKBMultilingualIntroductionArrowView *)self endPoint];
  [v4 moveToPoint:?];
  [(UIKBMultilingualIntroductionArrowView *)self endPoint];
  v6 = v5 + -4.0;
  [(UIKBMultilingualIntroductionArrowView *)self endPoint];
  [v4 addLineToPoint:{v6, v7 + 8.0}];
  [(UIKBMultilingualIntroductionArrowView *)self endPoint];
  v9 = v8 + 4.0;
  [(UIKBMultilingualIntroductionArrowView *)self endPoint];
  [v4 addLineToPoint:{v9, v10 + 8.0}];
  -[CAShapeLayer setPath:](self->_arrowHeadLayer, "setPath:", [v4 CGPath]);
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end