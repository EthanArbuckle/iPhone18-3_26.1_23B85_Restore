@interface WGPlatterHeaderContentView
- (CGAffineTransform)utilityButtonTransform;
- (WGPlatterHeaderContentView)init;
- (void)_layoutUtilityButtonWithScale:(double)a3;
- (void)setUtilityButtonTransform:(CGAffineTransform *)a3;
@end

@implementation WGPlatterHeaderContentView

- (WGPlatterHeaderContentView)init
{
  v5.receiver = self;
  v5.super_class = WGPlatterHeaderContentView;
  result = [(PLPlatterHeaderContentView *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x277CBF2C0];
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    *&result->_utilityButtonTransform.a = *MEMORY[0x277CBF2C0];
    *&result->_utilityButtonTransform.c = v4;
    *&result->_utilityButtonTransform.tx = *(v3 + 32);
  }

  return result;
}

- (void)setUtilityButtonTransform:(CGAffineTransform *)a3
{
  p_utilityButtonTransform = &self->_utilityButtonTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_utilityButtonTransform.c;
  *&v10.a = *&self->_utilityButtonTransform.a;
  *&v10.c = v7;
  *&v10.tx = *&self->_utilityButtonTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_utilityButtonTransform->c = *&a3->c;
    *&p_utilityButtonTransform->tx = v9;
    *&p_utilityButtonTransform->a = v8;
    [(WGPlatterHeaderContentView *)self setNeedsLayout];
    [(WGPlatterHeaderContentView *)self layoutIfNeeded];
  }
}

- (void)_layoutUtilityButtonWithScale:(double)a3
{
  v24.receiver = self;
  v24.super_class = WGPlatterHeaderContentView;
  [(PLPlatterHeaderContentView *)&v24 _layoutUtilityButtonWithScale:a3];
  v4 = [(PLPlatterHeaderContentView *)self utilityView];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(PLPlatterHeaderContentView *)self utilityButton];
  }

  v7 = v6;

  [v7 frame];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [v7 setCenter:{MidX, CGRectGetMidY(v26)}];
  [v7 setBounds:{0.0, 0.0, width, height}];
  p_utilityButtonTransform = &self->_utilityButtonTransform;
  v14 = *&p_utilityButtonTransform->c;
  *&v23.a = *&p_utilityButtonTransform->a;
  *&v23.c = v14;
  *&v23.tx = *&p_utilityButtonTransform->tx;
  [v7 setTransform:&v23];
  [v7 frame];
  v16 = v15;
  v18 = v17;
  UIRectIntegralWithScale();
  v21 = *&p_utilityButtonTransform->c;
  *&v22.a = *&p_utilityButtonTransform->a;
  *&v22.c = v21;
  *&v22.tx = *&p_utilityButtonTransform->tx;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformTranslate(&v23, &v22, v19 - v16, v20 - v18);
  v22 = v23;
  [v7 setTransform:&v22];
}

- (CGAffineTransform)utilityButtonTransform
{
  v3 = *&self[11].c;
  *&retstr->a = *&self[11].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].tx;
  return self;
}

@end