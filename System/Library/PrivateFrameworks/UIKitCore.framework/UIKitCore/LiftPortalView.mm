@interface LiftPortalView
- (_TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView)initWithFrame:(CGRect)frame;
@end

@implementation LiftPortalView

- (_TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView__lifted) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView____lazy_storage___portalView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_4003C7253903451D3979BA4096B6DE3114LiftPortalView_contentView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LiftPortalView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

@end