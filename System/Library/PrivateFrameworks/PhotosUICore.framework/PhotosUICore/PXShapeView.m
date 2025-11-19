@interface PXShapeView
- (void)setFillColor:(id)a3;
- (void)setPath:(id)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation PXShapeView

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_strokeColor != v5)
  {
    v10 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_strokeColor, a3);
      v8 = [(UIColor *)self->_strokeColor CGColor];
      v9 = [(PXShapeView *)self shapeLayer];
      [v9 setStrokeColor:v8];

      v6 = v10;
    }
  }
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_fillColor != v5)
  {
    v10 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_fillColor, a3);
      v8 = [(UIColor *)self->_fillColor CGColor];
      v9 = [(PXShapeView *)self shapeLayer];
      [v9 setFillColor:v8];

      v6 = v10;
    }
  }
}

- (void)setPath:(id)a3
{
  v12 = a3;
  if (([v12 isEqual:self->_path] & 1) == 0)
  {
    v4 = [v12 copy];
    path = self->_path;
    self->_path = v4;

    v6 = [(PXShapeView *)self shapeLayer];
    v7 = v12;
    [v6 setPath:{objc_msgSend(v12, "CGPath")}];
    [v12 lineWidth];
    [v6 setLineWidth:?];
    v8 = [v12 usesEvenOddFillRule];
    v9 = [(PXShapeView *)self shapeLayer];
    v10 = v9;
    if (v8)
    {
      v11 = @"even-odd";
    }

    else
    {
      v11 = @"non-zero";
    }

    [v9 setFillRule:v11];
  }
}

@end