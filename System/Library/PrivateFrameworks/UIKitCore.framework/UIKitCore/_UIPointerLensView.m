@interface _UIPointerLensView
- (CGRect)bounds;
- (double)_cornerRadius;
- (void)_setCornerRadius:(double)a3;
- (void)setBounds:(CGRect)a3;
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

- (void)_setCornerRadius:(double)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIPointerLensView();
  v4 = v7.receiver;
  [(UIView *)&v7 _setCornerRadius:a3];
  v5 = [v4 layer];
  [v4 _cornerRadius];
  [v5 setCornerRadius_];

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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for _UIPointerLensView();
  v7 = v10.receiver;
  [(UIView *)&v10 setBounds:x, y, width, height];
  v8 = [v7 layer];
  v9 = v7;
  sub_189128BBC(v8, v9);
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_1891286F8();
}

@end