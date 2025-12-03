@interface DimmerView
- (_TtC17PromotedContentUI10DimmerView)initWithFrame:(CGRect)frame;
@end

@implementation DimmerView

- (_TtC17PromotedContentUI10DimmerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI10DimmerView_dimmed) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DimmerView();
  height = [(DimmerView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  clearColor = [v8 clearColor];
  [(DimmerView *)v9 setBackgroundColor:clearColor];

  [(DimmerView *)v9 setAlpha:0.2];
  [(DimmerView *)v9 setIsAccessibilityElement:0];
  [(DimmerView *)v9 setUserInteractionEnabled:0];

  return v9;
}

@end