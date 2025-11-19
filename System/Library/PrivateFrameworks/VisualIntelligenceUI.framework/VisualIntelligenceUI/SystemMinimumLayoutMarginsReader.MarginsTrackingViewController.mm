@interface SystemMinimumLayoutMarginsReader.MarginsTrackingViewController
- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)init;
- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)initWithCoder:(id)a3;
- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins) = 0;
  result = sub_21E1429C4();
  __break(1u);
  return result;
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  sub_21DF4FB7C();
}

- (_TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end