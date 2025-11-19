@interface PUIDShapeView
- (UIBezierPath)path;
- (UIColor)fillColor;
- (void)setPath:(id)a3;
@end

@implementation PUIDShapeView

- (UIColor)fillColor
{
  v2 = [(PUIDShapeView *)self shapeLayer];
  v3 = [v2 fillColor];

  if (v3)
  {
    v4 = [UIColor colorWithCGColor:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIBezierPath)path
{
  v2 = [(PUIDShapeView *)self shapeLayer];
  v3 = [v2 path];
  if (v3)
  {
    v4 = [UIBezierPath bezierPathWithCGPath:v3];
    v5 = [v2 fillRule];
    if ([v5 isEqualToString:kCAFillRuleEvenOdd])
    {
      [v4 setUsesEvenOddFillRule:1];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPath:(id)a3
{
  v4 = a3;
  v6 = [(PUIDShapeView *)self shapeLayer];
  [v6 setPath:{objc_msgSend(v4, "CGPath")}];
  LODWORD(self) = [v4 usesEvenOddFillRule];

  v5 = &kCAFillRuleEvenOdd;
  if (!self)
  {
    v5 = &kCAFillRuleNonZero;
  }

  [v6 setFillRule:*v5];
}

@end