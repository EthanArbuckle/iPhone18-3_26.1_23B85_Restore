@interface _UIKBRTTouchDrifingFingerCircleView
- (CGColor)borderColor;
- (_UIKBRTTouchDrifingFingerCircleView)initWithFrame:(CGRect)frame;
- (void)_updateCornersFromFrame:(CGRect)frame;
- (void)setBorderColor:(CGColor *)color;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UIKBRTTouchDrifingFingerCircleView

- (_UIKBRTTouchDrifingFingerCircleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = _UIKBRTTouchDrifingFingerCircleView;
  v7 = [(UIView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = +[UIColor clearColor];
    [(UIView *)v7 setBackgroundColor:v8];

    layer = [(UIView *)v7 layer];
    [layer setMasksToBounds:1];

    [(_UIKBRTTouchDrifingFingerCircleView *)v7 _updateCornersFromFrame:x, y, width, height];
  }

  return v7;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = _UIKBRTTouchDrifingFingerCircleView;
  [(UIView *)&v8 setFrame:?];
  [(_UIKBRTTouchDrifingFingerCircleView *)self _updateCornersFromFrame:x, y, width, height];
}

- (void)setBorderColor:(CGColor *)color
{
  layer = [(UIView *)self layer];
  v6 = layer;
  if (color)
  {
    [layer setBorderColor:color];

    layer2 = [(UIView *)self layer];
    [layer2 setBorderWidth:3.0];
  }

  else
  {
    [layer setBorderWidth:0.0];

    layer2 = [(UIView *)self layer];
    [layer2 setBorderColor:0];
  }
}

- (CGColor)borderColor
{
  layer = [(UIView *)self layer];
  borderColor = [layer borderColor];

  return borderColor;
}

- (void)_updateCornersFromFrame:(CGRect)frame
{
  v3 = frame.size.width * 0.5;
  v4 = floorf(v3);
  layer = [(UIView *)self layer];
  [layer setCornerRadius:v4];
}

@end