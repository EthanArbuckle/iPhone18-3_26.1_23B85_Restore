@interface _UIGlintyShapeView
- (_UIGlintyShapeView)initWithFrame:(CGRect)frame;
- (void)setFillColor:(id)color;
- (void)setPath:(id)path;
- (void)setStrokeColor:(id)color;
@end

@implementation _UIGlintyShapeView

- (_UIGlintyShapeView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _UIGlintyShapeView;
  v3 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(UIView *)v4 layer];
    [layer2 setAllowsGroupBlending:0];

    [(UIView *)v4 setOpaque:0];
    v7 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v7];

    v8 = v4;
  }

  return v4;
}

- (void)setPath:(id)path
{
  objc_storeStrong(&self->_path, path);
  pathCopy = path;
  cGPath = [pathCopy CGPath];

  shapeLayer = [(_UIGlintyShapeView *)self shapeLayer];
  [shapeLayer setPath:cGPath];
}

- (void)setFillColor:(id)color
{
  objc_storeStrong(&self->_fillColor, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  shapeLayer = [(_UIGlintyShapeView *)self shapeLayer];
  [shapeLayer setFillColor:cGColor];
}

- (void)setStrokeColor:(id)color
{
  objc_storeStrong(&self->_strokeColor, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  shapeLayer = [(_UIGlintyShapeView *)self shapeLayer];
  [shapeLayer setStrokeColor:cGColor];
}

@end