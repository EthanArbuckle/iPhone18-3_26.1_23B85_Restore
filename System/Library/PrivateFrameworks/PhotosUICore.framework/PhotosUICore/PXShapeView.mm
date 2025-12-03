@interface PXShapeView
- (void)setFillColor:(id)color;
- (void)setPath:(id)path;
- (void)setStrokeColor:(id)color;
@end

@implementation PXShapeView

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_strokeColor != colorCopy)
  {
    v10 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_strokeColor, color);
      cGColor = [(UIColor *)self->_strokeColor CGColor];
      shapeLayer = [(PXShapeView *)self shapeLayer];
      [shapeLayer setStrokeColor:cGColor];

      v6 = v10;
    }
  }
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_fillColor != colorCopy)
  {
    v10 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_fillColor, color);
      cGColor = [(UIColor *)self->_fillColor CGColor];
      shapeLayer = [(PXShapeView *)self shapeLayer];
      [shapeLayer setFillColor:cGColor];

      v6 = v10;
    }
  }
}

- (void)setPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqual:self->_path] & 1) == 0)
  {
    v4 = [pathCopy copy];
    path = self->_path;
    self->_path = v4;

    shapeLayer = [(PXShapeView *)self shapeLayer];
    v7 = pathCopy;
    [shapeLayer setPath:{objc_msgSend(pathCopy, "CGPath")}];
    [pathCopy lineWidth];
    [shapeLayer setLineWidth:?];
    usesEvenOddFillRule = [pathCopy usesEvenOddFillRule];
    shapeLayer2 = [(PXShapeView *)self shapeLayer];
    v10 = shapeLayer2;
    if (usesEvenOddFillRule)
    {
      v11 = @"even-odd";
    }

    else
    {
      v11 = @"non-zero";
    }

    [shapeLayer2 setFillRule:v11];
  }
}

@end