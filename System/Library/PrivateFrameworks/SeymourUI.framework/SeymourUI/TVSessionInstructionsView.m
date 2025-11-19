@interface TVSessionInstructionsView
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI25TVSessionInstructionsView)initWithFrame:(CGRect)a3;
- (void)startButtonTapped;
@end

@implementation TVSessionInstructionsView

- (void)startButtonTapped
{
  v2 = self;
  sub_20BA81960();
}

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25TVSessionInstructionsView_startWorkoutView) + OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_playButton);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (_TtC9SeymourUI25TVSessionInstructionsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end