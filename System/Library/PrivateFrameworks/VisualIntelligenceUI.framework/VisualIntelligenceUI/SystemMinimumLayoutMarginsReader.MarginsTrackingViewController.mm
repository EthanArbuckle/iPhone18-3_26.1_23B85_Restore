@interface SystemMinimumLayoutMarginsReader.MarginsTrackingViewController
- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)init;
- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)initWithCoder:(id)coder;
- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewLayoutMarginsDidChange;
@end

@implementation SystemMinimumLayoutMarginsReader.MarginsTrackingViewController

- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SystemMinimumLayoutMarginsReader.MarginsTrackingViewController();
  return [(SystemMinimumLayoutMarginsReader.MarginsTrackingViewController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins) = 0;
  result = sub_21E1429C4();
  __break(1u);
  return result;
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  sub_21DF4FB7C();
}

- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end