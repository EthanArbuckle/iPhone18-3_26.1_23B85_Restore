@interface EQKitiOSEquationView
- (CGPoint)offset;
- (CGSize)intrinsicContentSize;
- (EQKitiOSEquationView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setEquationLayout:(id)a3;
@end

@implementation EQKitiOSEquationView

- (EQKitiOSEquationView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = EQKitiOSEquationView;
  result = [(EQKitiOSEquationView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_viewScale = 1.0;
    result->_offset = *MEMORY[0x277CBF348];
    result->_padding = 2.0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitiOSEquationView;
  [(EQKitiOSEquationView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, self->_offset.x, self->_offset.y);
  CGContextScaleCTM(CurrentContext, self->_viewScale, self->_viewScale);
  objc_msgSend_erasableBounds(self->_equationLayout, v5, v6, v7);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  textColor = self->_textColor;
  if (textColor)
  {
    v18 = objc_msgSend_CGColor(textColor, v13, v14, v15);
    CGContextSetFillColorWithColor(CurrentContext, v18);
    CGContextSetStrokeColorWithColor(CurrentContext, v18);
  }

  equationLayout = self->_equationLayout;

  objc_msgSend_renderIntoContext_offset_(equationLayout, v13, CurrentContext, v15, -MinX, -MinY);
}

- (void)setEquationLayout:(id)a3
{
  equationLayout = self->_equationLayout;
  if (equationLayout != a3)
  {

    self->_equationLayout = a3;

    MEMORY[0x2821F9670](self, sel_setNeedsLayout, v6, v7);
  }
}

- (CGSize)intrinsicContentSize
{
  equationLayout = self->_equationLayout;
  if (equationLayout)
  {
    objc_msgSend_erasableBounds(equationLayout, a2, v2, v3);
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v8;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = EQKitiOSEquationView;
  [(EQKitiOSEquationView *)&v28 layoutSubviews];
  equationLayout = self->_equationLayout;
  if (equationLayout)
  {
    objc_msgSend_erasableBounds(equationLayout, v3, v4, v5);
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
  }

  objc_msgSend_bounds(self, v3, v4, v5);
  v12 = v11;
  v14 = v13;
  objc_msgSend_padding(self, v15, v16, v17);
  v22 = v12 + -v21 * 2.0;
  if (v22 < 1.0)
  {
    v22 = 1.0;
  }

  v23 = v22 / v8;
  if (v8 == 0.0)
  {
    v23 = 1.0;
  }

  v24 = v14 + -v21 * 2.0;
  if (v24 < 1.0)
  {
    v24 = 1.0;
  }

  v25 = v24 / v10;
  if (v10 == 0.0)
  {
    v25 = 1.0;
  }

  if (v23 < v25)
  {
    v25 = v23;
  }

  v26 = fmin(v25, 10.0);
  self->_viewScale = v26;
  v27 = v21 + v21;
  self->_offset.x = (v12 - (v27 + v8 * v26)) * 0.5;
  self->_offset.y = (v14 - (v27 + v10 * v26)) * 0.5;
  objc_msgSend_setNeedsDisplay(self, v18, v19, v20);
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end