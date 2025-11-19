@interface _UIReparentingView
- (_TtC5UIKit18_UIReparentingView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UIReparentingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if ([(UIView *)v8 isUserInteractionEnabled])
  {
    v9 = *(&v8->super.super.super.isa + OBJC_IVAR____TtC5UIKit18_UIReparentingView_portal);
    [(UIView *)v8 convertPoint:v9 toCoordinateSpace:x, y];
    v10 = [v9 hitTest:v7 withEvent:?];
    v11 = v8;
    v8 = v7;
  }

  else
  {
    v10 = 0;
    v11 = v7;
  }

  return v10;
}

- (_TtC5UIKit18_UIReparentingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC5UIKit18_UIReparentingView_portal;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(_UIPortalView) init];
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit18_UIReparentingView_OpacityPairInputAmount);
  *v9 = 0xD00000000000001FLL;
  v9[1] = 0x800000018A6891C0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for _UIReparentingView();
  return [(UIView *)&v11 initWithFrame:x, y, width, height];
}

@end