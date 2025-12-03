@interface TVSummaryFooterView
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI19TVSummaryFooterView)initWithCoder:(id)coder;
@end

@implementation TVSummaryFooterView

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  sub_20B8FDB80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v3 = sub_20C13CC54();

  return v3;
}

- (_TtC9SeymourUI19TVSummaryFooterView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onDoneButtonTap);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onCooldownButtonTap);
  *v4 = 0;
  v4[1] = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

@end