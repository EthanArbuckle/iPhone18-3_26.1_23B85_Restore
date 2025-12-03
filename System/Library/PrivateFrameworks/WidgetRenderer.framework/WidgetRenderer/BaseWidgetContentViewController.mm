@interface BaseWidgetContentViewController
- (_TtC14WidgetRenderer31BaseWidgetContentViewController)initWithCoder:(id)coder;
- (_TtC14WidgetRenderer31BaseWidgetContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillLayoutSubviews;
@end

@implementation BaseWidgetContentViewController

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1DADB50F4();
}

- (_TtC14WidgetRenderer31BaseWidgetContentViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay) = 0;
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (_TtC14WidgetRenderer31BaseWidgetContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end