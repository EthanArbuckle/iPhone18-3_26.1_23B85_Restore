@interface ActivityPreviewHostingViewController
- (_TtC14WidgetRenderer36ActivityPreviewHostingViewController)initWithCoder:(id)coder;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation ActivityPreviewHostingViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  [container preferredContentSize];
  [(ActivityPreviewHostingViewController *)selfCopy setPreferredContentSize:?];
  view = [(ActivityPreviewHostingViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [container preferredContentSize];
    [v6 frame];
    [v6 setFrame_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC14WidgetRenderer36ActivityPreviewHostingViewController)initWithCoder:(id)coder
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