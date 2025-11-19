@interface PhoneSessionOngoingWorkoutDetectedView
- (_TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PhoneSessionOngoingWorkoutDetectedView

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for PhoneSessionOngoingWorkoutDetectedView();
  v4 = a3;
  v5 = v12.receiver;
  [(PhoneSessionOngoingWorkoutDetectedView *)&v12 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  [v5 bounds];
  v11 = sub_20BF6C784(v6, v7, v8, v9, v10);
  sub_20C0787A4(v11, MEMORY[0x277D84F90], a3, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_previousBounds, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints);

  [v5 setNeedsUpdateConstraints];
}

- (_TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end