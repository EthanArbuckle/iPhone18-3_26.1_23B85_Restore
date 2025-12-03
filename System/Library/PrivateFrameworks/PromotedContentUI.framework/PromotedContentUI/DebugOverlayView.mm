@interface DebugOverlayView
- (_TtC17PromotedContentUI16DebugOverlayView)initWithCoder:(id)coder;
- (_TtC17PromotedContentUI16DebugOverlayView)initWithFrame:(CGRect)frame;
@end

@implementation DebugOverlayView

- (_TtC17PromotedContentUI16DebugOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(DebugOverlayView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17PromotedContentUI16DebugOverlayView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(DebugOverlayView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end