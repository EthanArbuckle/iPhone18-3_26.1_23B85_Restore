@interface MenuVisibilityTrackingButton
- (_TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton)initWithCoder:(id)coder;
- (_TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton)initWithFrame:(CGRect)frame;
@end

@implementation MenuVisibilityTrackingButton

- (_TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MenuVisibilityTrackingButton();
  return [(MenuVisibilityTrackingButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_A1D0AE0DB097661F1512EEFA04B2EE1128MenuVisibilityTrackingButton_currentlyOpenMenu) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MenuVisibilityTrackingButton();
  coderCopy = coder;
  v5 = [(MenuVisibilityTrackingButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end