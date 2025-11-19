@interface PreviewHostingViewController
- (BOOL)metricsDefineSize;
- (CHSInlineTextParameters)inlineTextParameters;
- (_TtC14WidgetRenderer28PreviewHostingViewController)initWithCoder:(id)a3;
- (void)setInlineTextParameters:(id)a3;
- (void)setMetricsDefineSize:(BOOL)a3;
@end

@implementation PreviewHostingViewController

- (CHSInlineTextParameters)inlineTextParameters
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setInlineTextParameters:(id)a3
{
  v5 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC14WidgetRenderer28PreviewHostingViewController)initWithCoder:(id)a3
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

- (void)setMetricsDefineSize:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = a3;
  v6 = self;
  sub_1DAE21114();
}

@end