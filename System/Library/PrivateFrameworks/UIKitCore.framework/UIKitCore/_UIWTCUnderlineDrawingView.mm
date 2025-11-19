@interface _UIWTCUnderlineDrawingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIBezierPath)path;
- (void)setColor:(id)a3;
- (void)setPath:(id)a3;
@end

@implementation _UIWTCUnderlineDrawingView

- (void)setPath:(id)a3
{
  v5 = a3;
  v6 = [a3 CGPath];
  v7 = [(_UIWTCUnderlineDrawingView *)self pathLayer];
  [v7 setPath:v6];
}

- (UIBezierPath)path
{
  v2 = [(_UIWTCUnderlineDrawingView *)self pathLayer];
  v3 = [v2 path];

  if (v3)
  {
    v4 = [UIBezierPath bezierPathWithCGPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(_UIWTCUnderlineDrawingView *)self pathLayer];
  [v7 setFillColor:v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UIWTCUnderlineDrawingView *)self path];
  v7 = v6;
  if (v6)
  {
    [v6 bounds];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = _UIWTCUnderlineDrawingView;
    [(UIView *)&v16 sizeThatFits:width, height];
    v9 = v12;
    v11 = v13;
  }

  v14 = v9;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

@end