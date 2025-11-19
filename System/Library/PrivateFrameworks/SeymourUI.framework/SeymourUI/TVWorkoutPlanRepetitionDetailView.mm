@interface TVWorkoutPlanRepetitionDetailView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView)initWithCoder:(id)a3;
- (_TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView)initWithFrame:(CGRect)a3;
@end

@implementation TVWorkoutPlanRepetitionDetailView

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D76C80];
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView_stackView) intrinsicContentSize];
  v4 = v2;
  result.height = v3;
  result.width = v4;
  return result;
}

- (_TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView_stackView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v5 setAxis_];
  [v5 setSpacing_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end