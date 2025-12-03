@interface _UIFocusRotaryRingArrowView
- (_UIFocusRotaryRingArrowView)initWithFrame:(CGRect)frame color:(id)color;
- (id)_trianglePath;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)updateArrowColor:(id)color;
@end

@implementation _UIFocusRotaryRingArrowView

- (_UIFocusRotaryRingArrowView)initWithFrame:(CGRect)frame color:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v15.receiver = self;
  v15.super_class = _UIFocusRotaryRingArrowView;
  height = [(UIView *)&v15 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69794A0]);
    shapeLayer = height->_shapeLayer;
    height->_shapeLayer = v11;

    _UIFocusRotaryRingConfigureShadowForLayer(height->_shapeLayer);
    layer = [(UIView *)height layer];
    [layer addSublayer:height->_shapeLayer];

    [(UIView *)height setAutoresizingMask:0];
    [(_UIFocusRotaryRingArrowView *)height updateArrowColor:colorCopy];
    [(_UIFocusRotaryRingArrowView *)height _updateShapePath];
  }

  return height;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIFocusRotaryRingArrowView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIFocusRotaryRingArrowView *)self _updateShapePath];
}

- (void)updateArrowColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  shapeLayer = self->_shapeLayer;

  [(CAShapeLayer *)shapeLayer setFillColor:cGColor];
}

- (void)_updateShapePath
{
  _trianglePath = [(_UIFocusRotaryRingArrowView *)self _trianglePath];
  v3 = _trianglePath;
  -[CAShapeLayer setPath:](self->_shapeLayer, "setPath:", [_trianglePath CGPath]);
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