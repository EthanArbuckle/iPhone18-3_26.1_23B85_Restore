@interface SVButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SVButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)touchInsets;
- (void)_privateButtonTapped;
@end

@implementation SVButton

- (SVButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SVButton;
  v3 = [(SVButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SVButton *)v3 addTarget:v3 action:sel__privateButtonTapped forControlEvents:64];
  }

  return v4;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v28.receiver = self;
  v28.super_class = SVButton;
  v7 = [(SVButton *)&v28 pointInside:a4 withEvent:?];
  [(SVButton *)self bounds];
  v26 = v9;
  v27 = v8;
  v25 = v10;
  v12 = v11;
  [(SVButton *)self touchInsets];
  v14 = v13;
  [(SVButton *)self touchInsets];
  v16 = v15;
  [(SVButton *)self touchInsets];
  v18 = v17;
  [(SVButton *)self touchInsets];
  v20 = v19;
  [(SVButton *)self touchInsets];
  v22 = v21;
  [(SVButton *)self touchInsets];
  if (v7)
  {
    return 1;
  }

  v30.size.height = v12 - (v22 + v23);
  v30.size.width = v25 - (v18 + v20);
  v30.origin.y = v26 + v16;
  v30.origin.x = v27 + v14;
  v29.x = x;
  v29.y = y;
  return CGRectContainsPoint(v30, v29);
}

- (void)_privateButtonTapped
{
  v3 = [(SVButton *)self touchUpInsideBlock];

  if (v3)
  {
    v4 = [(SVButton *)self touchUpInsideBlock];
    v4[2]();
  }
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end