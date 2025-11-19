@interface _UISoftOutlineView
- (_TtC5UIKit18_UISoftOutlineView)initWithCoder:(id)a3;
- (_TtC5UIKit18_UISoftOutlineView)initWithFrame:(CGRect)a3;
- (void)_updateColors;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation _UISoftOutlineView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UISoftOutlineView();
  v2 = v3.receiver;
  [(UIView *)&v3 didMoveToWindow];
  sub_188DBD174();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188DC854C();
}

- (_TtC5UIKit18_UISoftOutlineView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_shapeView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIView) init];
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)_updateColors
{
  v2 = self;
  sub_188DBD174();
}

- (_TtC5UIKit18_UISoftOutlineView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end