@interface ActivityPreviewHostingViewController
- (_TtC14WidgetRenderer36ActivityPreviewHostingViewController)initWithCoder:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation ActivityPreviewHostingViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v7 = self;
  [a3 preferredContentSize];
  [(ActivityPreviewHostingViewController *)v7 setPreferredContentSize:?];
  v5 = [(ActivityPreviewHostingViewController *)v7 view];
  if (v5)
  {
    v6 = v5;
    [a3 preferredContentSize];
    [v6 frame];
    [v6 setFrame_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC14WidgetRenderer36ActivityPreviewHostingViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced) = 0;
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

@end