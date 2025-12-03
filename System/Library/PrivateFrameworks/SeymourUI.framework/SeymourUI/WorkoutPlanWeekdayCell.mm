@interface WorkoutPlanWeekdayCell
- (_TtC9SeymourUI22WorkoutPlanWeekdayCell)initWithCoder:(id)coder;
- (_TtC9SeymourUI22WorkoutPlanWeekdayCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
@end

@implementation WorkoutPlanWeekdayCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CCC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for WorkoutPlanWeekdayCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(WorkoutPlanWeekdayCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for HostedContentIdentifier();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContentIdentifier;
  swift_beginAccess();
  sub_20BC03E5C(v5, selfCopy + v9);
  swift_endAccess();
}

- (_TtC9SeymourUI22WorkoutPlanWeekdayCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContent) = 0;
  v8 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContentIdentifier;
  v9 = type metadata accessor for HostedContentIdentifier();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v11.receiver = self;
  v11.super_class = type metadata accessor for WorkoutPlanWeekdayCell();
  return [(WorkoutPlanWeekdayCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI22WorkoutPlanWeekdayCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContent) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanWeekdayCell_hostedContentIdentifier;
  v6 = type metadata accessor for HostedContentIdentifier();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for WorkoutPlanWeekdayCell();
  coderCopy = coder;
  v8 = [(WorkoutPlanWeekdayCell *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end