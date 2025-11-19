@interface _UIGlintyShapeView
- (_UIGlintyShapeView)initWithFrame:(CGRect)a3;
- (void)setFillColor:(id)a3;
- (void)setPath:(id)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation _UIGlintyShapeView

- (_UIGlintyShapeView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _UIGlintyShapeView;
  v3 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    v6 = [(UIView *)v4 layer];
    [v6 setAllowsGroupBlending:0];

    [(UIView *)v4 setOpaque:0];
    v7 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v7];

    v8 = v4;
  }

  return v4;
}

- (void)setPath:(id)a3
{
  objc_storeStrong(&self->_path, a3);
  v5 = a3;
  v6 = [v5 CGPath];

  v7 = [(_UIGlintyShapeView *)self shapeLayer];
  [v7 setPath:v6];
}

- (void)setFillColor:(id)a3
{
  objc_storeStrong(&self->_fillColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(_UIGlintyShapeView *)self shapeLayer];
  [v7 setFillColor:v6];
}

- (void)setStrokeColor:(id)a3
{
  objc_storeStrong(&self->_strokeColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(_UIGlintyShapeView *)self shapeLayer];
  [v7 setStrokeColor:v6];
}

@end