@interface STUIStatusBarBezierView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)intrinsicContentSize;
- (STUIStatusBarBezierView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsets;
- (void)setAlignmentRectInsets:(UIEdgeInsets)insets;
- (void)setBezierPath:(id)path;
- (void)setFillColor:(id)color;
- (void)setStrokeColor:(id)color;
@end

@implementation STUIStatusBarBezierView

- (STUIStatusBarBezierView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarBezierView;
  v3 = [(STUIStatusBarBezierView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  shapeLayer = [(STUIStatusBarBezierView *)v3 shapeLayer];
  [shapeLayer setFillColor:0];

  return v3;
}

- (void)setBezierPath:(id)path
{
  pathCopy = path;
  if (self->_bezierPath != pathCopy)
  {
    v10 = pathCopy;
    objc_storeStrong(&self->_bezierPath, path);
    shapeLayer = [(STUIStatusBarBezierView *)self shapeLayer];
    v7 = v10;
    [shapeLayer setPath:{-[UIBezierPath CGPath](v10, "CGPath")}];
    [(UIBezierPath *)v10 lineWidth];
    [shapeLayer setLineWidth:?];
    usesEvenOddFillRule = [(UIBezierPath *)v10 usesEvenOddFillRule];
    v9 = MEMORY[0x277CDA248];
    if (!usesEvenOddFillRule)
    {
      v9 = MEMORY[0x277CDA250];
    }

    [shapeLayer setFillRule:*v9];
    [(STUIStatusBarBezierView *)self invalidateIntrinsicContentSize];

    pathCopy = v10;
  }
}

- (void)setAlignmentRectInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_alignmentRectInsets.top), vceqq_f64(v4, *&self->_alignmentRectInsets.bottom)))) & 1) == 0)
  {
    self->_alignmentRectInsets = insets;
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

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (self->_fillColor != colorCopy)
  {
    v9 = colorCopy;
    objc_storeStrong(&self->_fillColor, color);
    v6 = v9;
    cGColor = [(UIColor *)v9 CGColor];
    shapeLayer = [(STUIStatusBarBezierView *)self shapeLayer];
    [shapeLayer setFillColor:cGColor];

    colorCopy = v9;
  }
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (self->_strokeColor != colorCopy)
  {
    v9 = colorCopy;
    objc_storeStrong(&self->_strokeColor, color);
    v6 = v9;
    cGColor = [(UIColor *)v9 CGColor];
    shapeLayer = [(STUIStatusBarBezierView *)self shapeLayer];
    [shapeLayer setStrokeColor:cGColor];

    colorCopy = v9;
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = STUIStatusBarBezierView;
  if (-[STUIStatusBarBezierView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"fillColor"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"strokeColor"];
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