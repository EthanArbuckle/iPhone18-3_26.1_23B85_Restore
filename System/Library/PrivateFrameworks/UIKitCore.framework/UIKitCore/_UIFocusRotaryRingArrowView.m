@interface _UIFocusRotaryRingArrowView
- (_UIFocusRotaryRingArrowView)initWithFrame:(CGRect)a3 color:(id)a4;
- (id)_trianglePath;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)updateArrowColor:(id)a3;
@end

@implementation _UIFocusRotaryRingArrowView

- (_UIFocusRotaryRingArrowView)initWithFrame:(CGRect)a3 color:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = _UIFocusRotaryRingArrowView;
  v10 = [(UIView *)&v15 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69794A0]);
    shapeLayer = v10->_shapeLayer;
    v10->_shapeLayer = v11;

    _UIFocusRotaryRingConfigureShadowForLayer(v10->_shapeLayer);
    v13 = [(UIView *)v10 layer];
    [v13 addSublayer:v10->_shapeLayer];

    [(UIView *)v10 setAutoresizingMask:0];
    [(_UIFocusRotaryRingArrowView *)v10 updateArrowColor:v9];
    [(_UIFocusRotaryRingArrowView *)v10 _updateShapePath];
  }

  return v10;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIFocusRotaryRingArrowView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIFocusRotaryRingArrowView *)self _updateShapePath];
}

- (void)updateArrowColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  shapeLayer = self->_shapeLayer;

  [(CAShapeLayer *)shapeLayer setFillColor:v6];
}

- (void)_updateShapePath
{
  v4 = [(_UIFocusRotaryRingArrowView *)self _trianglePath];
  v3 = v4;
  -[CAShapeLayer setPath:](self->_shapeLayer, "setPath:", [v4 CGPath]);
}

- (id)_trianglePath
{
  [(UIView *)self bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = +[UIBezierPath bezierPath];
  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  [v10 moveToPoint:{MinX, CGRectGetMaxY(v17)}];
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  [v10 addLineToPoint:{MidX, CGRectGetMinY(v19)}];
  v20.origin.x = v3;
  v20.origin.y = v5;
  v20.size.width = v7;
  v20.size.height = v9;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = v3;
  v21.origin.y = v5;
  v21.size.width = v7;
  v21.size.height = v9;
  [v10 addLineToPoint:{MaxX, CGRectGetMaxY(v21)}];
  [v10 closePath];

  return v10;
}

@end