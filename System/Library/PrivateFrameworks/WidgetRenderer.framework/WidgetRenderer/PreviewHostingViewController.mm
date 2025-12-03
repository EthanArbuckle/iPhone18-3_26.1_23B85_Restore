@interface PreviewHostingViewController
- (BOOL)metricsDefineSize;
- (CHSInlineTextParameters)inlineTextParameters;
- (_TtC14WidgetRenderer28PreviewHostingViewController)initWithCoder:(id)coder;
- (void)setInlineTextParameters:(id)parameters;
- (void)setMetricsDefineSize:(BOOL)size;
@end

@implementation PreviewHostingViewController

- (CHSInlineTextParameters)inlineTextParameters
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setInlineTextParameters:(id)parameters
{
  v5 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = parameters;
  parametersCopy = parameters;
}

- (_TtC14WidgetRenderer28PreviewHostingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize) = 1;
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (BOOL)metricsDefineSize
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setMetricsDefineSize:(BOOL)size
{
  v5 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = size;
  selfCopy = self;
  sub_1DAE21114();
}

@end