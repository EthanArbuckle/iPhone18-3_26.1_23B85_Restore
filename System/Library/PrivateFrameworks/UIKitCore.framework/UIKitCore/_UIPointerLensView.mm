@interface _UIPointerLensView
- (CGRect)bounds;
- (double)_cornerRadius;
- (void)_setCornerRadius:(double)radius;
- (void)setBounds:(CGRect)bounds;
- (void)tintColorDidChange;
@end

@implementation _UIPointerLensView

- (double)_cornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIPointerLensView();
  [(UIView *)&v3 _cornerRadius];
  return result;
}

- (void)_setCornerRadius:(double)radius
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIPointerLensView();
  v4 = v7.receiver;
  [(UIView *)&v7 _setCornerRadius:radius];
  layer = [v4 layer];
  [v4 _cornerRadius];
  [layer setCornerRadius_];

  v6 = *&v4[OBJC_IVAR____UIPointerLensView_element];
  [v4 _cornerRadius];
  [v6 setCornerRadius_];
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for _UIPointerLensView();
  [(UIView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for _UIPointerLensView();
  v7 = v10.receiver;
  [(UIView *)&v10 setBounds:x, y, width, height];
  layer = [v7 layer];
  v9 = v7;
  sub_189128BBC(layer, v9);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1891286F8();
}

@end