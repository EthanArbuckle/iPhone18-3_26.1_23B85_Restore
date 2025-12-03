@interface PhoneSessionOngoingWorkoutDetectedView
- (_TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PhoneSessionOngoingWorkoutDetectedView

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for PhoneSessionOngoingWorkoutDetectedView();
  changeCopy = change;
  v5 = v12.receiver;
  [(PhoneSessionOngoingWorkoutDetectedView *)&v12 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  [v5 bounds];
  v11 = sub_20BF6C784(traitCollection, v7, v8, v9, v10);
  sub_20C0787A4(v11, MEMORY[0x277D84F90], change, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_previousBounds, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints);

  [v5 setNeedsUpdateConstraints];
}

- (_TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end