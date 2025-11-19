@interface STUIStatusBarBezierView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)intrinsicContentSize;
- (STUIStatusBarBezierView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (void)setAlignmentRectInsets:(UIEdgeInsets)a3;
- (void)setBezierPath:(id)a3;
- (void)setFillColor:(id)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation STUIStatusBarBezierView

- (STUIStatusBarBezierView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarBezierView;
  v3 = [(STUIStatusBarBezierView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(STUIStatusBarBezierView *)v3 shapeLayer];
  [v4 setFillColor:0];

  return v3;
}

- (void)setBezierPath:(id)a3
{
  v5 = a3;
  if (self->_bezierPath != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_bezierPath, a3);
    v6 = [(STUIStatusBarBezierView *)self shapeLayer];
    v7 = v10;
    [v6 setPath:{-[UIBezierPath CGPath](v10, "CGPath")}];
    [(UIBezierPath *)v10 lineWidth];
    [v6 setLineWidth:?];
    v8 = [(UIBezierPath *)v10 usesEvenOddFillRule];
    v9 = MEMORY[0x277CDA248];
    if (!v8)
    {
      v9 = MEMORY[0x277CDA250];
    }

    [v6 setFillRule:*v9];
    [(STUIStatusBarBezierView *)self invalidateIntrinsicContentSize];

    v5 = v10;
  }
}

- (void)setAlignmentRectInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_alignmentRectInsets.top), vceqq_f64(v4, *&self->_alignmentRectInsets.bottom)))) & 1) == 0)
  {
    self->_alignmentRectInsets = a3;
    [(STUIStatusBarBezierView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIBezierPath *)self->_bezierPath bounds];
  v4 = v3;
  v6 = v5;
  [(STUIStatusBarBezierView *)self alignmentRectInsets];
  v8 = v7;
  [(STUIStatusBarBezierView *)self alignmentRectInsets];
  v10 = v6 - (v8 + v9);
  [(STUIStatusBarBezierView *)self alignmentRectInsets];
  v12 = v11;
  [(STUIStatusBarBezierView *)self alignmentRectInsets];
  v14 = v4 - (v12 + v13);
  v15 = v10;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (self->_fillColor != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_fillColor, a3);
    v6 = v9;
    v7 = [(UIColor *)v9 CGColor];
    v8 = [(STUIStatusBarBezierView *)self shapeLayer];
    [v8 setFillColor:v7];

    v5 = v9;
  }
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (self->_strokeColor != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_strokeColor, a3);
    v6 = v9;
    v7 = [(UIColor *)v9 CGColor];
    v8 = [(STUIStatusBarBezierView *)self shapeLayer];
    [v8 setStrokeColor:v7];

    v5 = v9;
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STUIStatusBarBezierView;
  if (-[STUIStatusBarBezierView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"fillColor"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"strokeColor"];
  }

  return v5;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end