@interface PUIDShapeView
- (UIBezierPath)path;
- (UIColor)fillColor;
- (void)setPath:(id)path;
@end

@implementation PUIDShapeView

- (UIColor)fillColor
{
  shapeLayer = [(PUIDShapeView *)self shapeLayer];
  fillColor = [shapeLayer fillColor];

  if (fillColor)
  {
    v4 = [UIColor colorWithCGColor:fillColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIBezierPath)path
{
  shapeLayer = [(PUIDShapeView *)self shapeLayer];
  path = [shapeLayer path];
  if (path)
  {
    v4 = [UIBezierPath bezierPathWithCGPath:path];
    fillRule = [shapeLayer fillRule];
    if ([fillRule isEqualToString:kCAFillRuleEvenOdd])
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

- (void)setPath:(id)path
{
  pathCopy = path;
  shapeLayer = [(PUIDShapeView *)self shapeLayer];
  [shapeLayer setPath:{objc_msgSend(pathCopy, "CGPath")}];
  LODWORD(self) = [pathCopy usesEvenOddFillRule];

  v5 = &kCAFillRuleEvenOdd;
  if (!self)
  {
    v5 = &kCAFillRuleNonZero;
  }

  [shapeLayer setFillRule:*v5];
}

@end