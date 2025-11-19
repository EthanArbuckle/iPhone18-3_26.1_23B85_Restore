@interface BaseWidgetContentViewController
- (_TtC14WidgetRenderer31BaseWidgetContentViewController)initWithCoder:(id)a3;
- (_TtC14WidgetRenderer31BaseWidgetContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation BaseWidgetContentViewController

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1DADB50F4();
}

- (_TtC14WidgetRenderer31BaseWidgetContentViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay) = 0;
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (_TtC14WidgetRenderer31BaseWidgetContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end