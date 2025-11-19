@interface MenuVisibilityTrackingButton
- (_TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton)initWithCoder:(id)a3;
- (_TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton)initWithFrame:(CGRect)a3;
@end

@implementation MenuVisibilityTrackingButton

- (_TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MenuVisibilityTrackingButton();
  return [(MenuVisibilityTrackingButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MenuVisibilityTrackingButton();
  v4 = a3;
  v5 = [(MenuVisibilityTrackingButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end