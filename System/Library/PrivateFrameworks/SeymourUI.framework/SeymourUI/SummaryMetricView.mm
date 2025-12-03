@interface SummaryMetricView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI17SummaryMetricView)initWithCoder:(id)coder;
@end

@implementation SummaryMetricView

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI17SummaryMetricView_labelStack) sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC9SeymourUI17SummaryMetricView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9SeymourUI17SummaryMetricView_labelStack;
  initWithFrame_ = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [initWithFrame_ setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v4) = initWithFrame_;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

@end