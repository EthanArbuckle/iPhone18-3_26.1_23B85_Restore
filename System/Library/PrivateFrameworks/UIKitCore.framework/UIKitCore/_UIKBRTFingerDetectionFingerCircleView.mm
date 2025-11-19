@interface _UIKBRTFingerDetectionFingerCircleView
- (CGColor)borderColor;
- (_UIKBRTFingerDetectionFingerCircleView)initWithFrame:(CGRect)a3;
- (void)_updateCornersFromFrame:(CGRect)a3;
- (void)setBorderColor:(CGColor *)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _UIKBRTFingerDetectionFingerCircleView

- (_UIKBRTFingerDetectionFingerCircleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = _UIKBRTFingerDetectionFingerCircleView;
  v7 = [(UIView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = +[UIColor clearColor];
    [(UIView *)v7 setBackgroundColor:v8];

    v9 = [(UIView *)v7 layer];
    [v9 setMasksToBounds:1];

    [(_UIKBRTFingerDetectionFingerCircleView *)v7 _updateCornersFromFrame:x, y, width, height];
  }

  return v7;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = _UIKBRTFingerDetectionFingerCircleView;
  [(UIView *)&v8 setFrame:?];
  [(_UIKBRTFingerDetectionFingerCircleView *)self _updateCornersFromFrame:x, y, width, height];
}

- (void)setBorderColor:(CGColor *)a3
{
  v5 = [(UIView *)self layer];
  v6 = v5;
  if (a3)
  {
    [v5 setBorderColor:a3];

    v7 = [(UIView *)self layer];
    [v7 setBorderWidth:3.0];
  }

  else
  {
    [v5 setBorderWidth:0.0];

    v7 = [(UIView *)self layer];
    [v7 setBorderColor:0];
  }
}

- (CGColor)borderColor
{
  v2 = [(UIView *)self layer];
  v3 = [v2 borderColor];

  return v3;
}

- (void)_updateCornersFromFrame:(CGRect)a3
{
  v3 = a3.size.width * 0.5;
  v4 = floorf(v3);
  v5 = [(UIView *)self layer];
  [v5 setCornerRadius:v4];
}

@end