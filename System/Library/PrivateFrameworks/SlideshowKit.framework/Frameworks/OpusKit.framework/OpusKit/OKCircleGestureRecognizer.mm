@interface OKCircleGestureRecognizer
- (void)initDebugLayer:(CGPoint)a3;
- (void)reset;
- (void)resetDebug;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateDebug:(CGPoint)a3 angle:(double)a4;
@end

@implementation OKCircleGestureRecognizer

- (void)initDebugLayer:(CGPoint)a3
{
  if (!self->_roundLayer)
  {
    self->_roundLayer = [MEMORY[0x277CD9F90] layer];
    -[CAShapeLayer setStrokeColor:](self->_roundLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D75348] "greenColor")]);
    [(CAShapeLayer *)self->_roundLayer setLineWidth:2.0];
  }

  if (!self->_pointLayer)
  {
    self->_pointLayer = [MEMORY[0x277CD9F90] layer];
    -[CAShapeLayer setFillColor:](self->_pointLayer, "setFillColor:", [objc_msgSend(MEMORY[0x277D75348] "redColor")]);
    -[CAShapeLayer setStrokeColor:](self->_pointLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D75348] "redColor")]);
    [(CAShapeLayer *)self->_pointLayer setLineWidth:2.0];
  }

  if (!self->_originLayer)
  {
    self->_originLayer = [MEMORY[0x277CD9F90] layer];
    -[CAShapeLayer setFillColor:](self->_originLayer, "setFillColor:", [objc_msgSend(MEMORY[0x277D75348] "blueColor")]);
    -[CAShapeLayer setStrokeColor:](self->_originLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D75348] "blueColor")]);
    [(CAShapeLayer *)self->_originLayer setLineWidth:2.0];
  }

  [objc_msgSend(-[OKCircleGestureRecognizer view](self view];
  [objc_msgSend(-[OKCircleGestureRecognizer view](self "view")];
  v4 = [-[OKCircleGestureRecognizer view](self "view")];
  originLayer = self->_originLayer;

  [v4 addSublayer:originLayer];
}

- (void)updateDebug:(CGPoint)a3 angle:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = sqrt((self->_origin.x - a3.x) * (self->_origin.x - a3.x) + (self->_origin.y - a3.y) * (self->_origin.y - a3.y));
  -[CAShapeLayer setPath:](self->_roundLayer, "setPath:", [objc_msgSend(MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:a3.x startAngle:a3.y endAngle:v8 clockwise:{0.0, 360.0), "CGPath"}]);
  v9 = __sincos_stret(a4);
  v10 = [objc_msgSend(MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:x + v8 * v9.__cosval startAngle:y + v8 * v9.__sinval endAngle:20.0 clockwise:{0.0, 360.0), "CGPath"}];
  pointLayer = self->_pointLayer;

  [(CAShapeLayer *)pointLayer setPath:v10];
}

- (void)resetDebug
{
  [(CAShapeLayer *)self->_roundLayer removeFromSuperlayer];
  pointLayer = self->_pointLayer;

  [(CAShapeLayer *)pointLayer removeFromSuperlayer];
}

- (void)reset
{
  self->_lastAngle = 0.0;
  self->_angle = 0.0;
  self->_continuousProgress = 0.0;
  self->_diffenceProgress = 0.0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v15.receiver = self;
  v15.super_class = OKCircleGestureRecognizer;
  [(OKCircleGestureRecognizer *)&v15 touchesBegan:a3 withEvent:a4];
  if ([a3 count] == 1)
  {
    [objc_msgSend(a3 "anyObject")];
    self->_origin.x = v6;
    self->_origin.y = v7;
    [(OKCircleGestureRecognizer *)self setState:1];
    [-[OKCircleGestureRecognizer view](self "view")];
    v9 = v8 * 0.5;
    [-[OKCircleGestureRecognizer view](self "view")];
    v11 = v10 * 0.5;
    [objc_msgSend(a3 "anyObject")];
    v14 = atan2(v12 - v11, v13 - v9);
    if (v14 * 3.14159265 / 180.0 < 0.0)
    {
      v14 = v14 + 6.28318531;
    }

    self->_lastAngle = v14;
    self->_angle = 0.0;
    self->_continuousProgress = 0.0;
    self->_diffenceProgress = 0.0;
  }

  else
  {
    [(OKCircleGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v15.receiver = self;
  v15.super_class = OKCircleGestureRecognizer;
  [(OKCircleGestureRecognizer *)&v15 touchesMoved:a3 withEvent:a4];
  if ([(OKCircleGestureRecognizer *)self state]!= 5)
  {
    [-[OKCircleGestureRecognizer view](self "view")];
    v7 = v6 * 0.5;
    [-[OKCircleGestureRecognizer view](self "view")];
    v9 = v8 * 0.5;
    [objc_msgSend(a3 "anyObject")];
    v12 = atan2(v10 - v9, v11 - v7);
    if (v12 * 3.14159265 / 180.0 < 0.0)
    {
      v12 = v12 + 6.28318531;
    }

    lastAngle = self->_lastAngle;
    v14 = v12 - lastAngle;
    if (vabdd_f64(v12, lastAngle) > 1.0)
    {
      if (lastAngle <= v12)
      {
        if (lastAngle < v12)
        {
          self->_lastAngle = v12;
          v14 = v12 + -6.28318531;
        }
      }

      else
      {
        self->_lastAngle = v12;
        v14 = v12;
      }
    }

    self->_angle = v14 + self->_angle;
    self->_lastAngle = v12;
    self->_diffenceProgress = v14 / 6.28318531;
    self->_continuousProgress = self->_angle / 6.28318531;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = OKCircleGestureRecognizer;
  [(OKCircleGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(OKCircleGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = OKCircleGestureRecognizer;
  [(OKCircleGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(OKCircleGestureRecognizer *)self setState:4];
  [(OKCircleGestureRecognizer *)self reset];
}

@end