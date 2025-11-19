@interface DimmerView
- (_TtC17PromotedContentUI10DimmerView)initWithFrame:(CGRect)a3;
@end

@implementation DimmerView

- (_TtC17PromotedContentUI10DimmerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI10DimmerView_dimmed) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DimmerView();
  v7 = [(DimmerView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [(DimmerView *)v9 setBackgroundColor:v10];

  [(DimmerView *)v9 setAlpha:0.2];
  [(DimmerView *)v9 setIsAccessibilityElement:0];
  [(DimmerView *)v9 setUserInteractionEnabled:0];

  return v9;
}

@end