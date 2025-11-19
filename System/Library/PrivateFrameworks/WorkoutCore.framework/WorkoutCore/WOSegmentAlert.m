@interface WOSegmentAlert
- (WOSegmentAlert)init;
- (id)segmentDescription;
- (id)spokenDescriptionWithFormattingManager:(id)a3;
- (id)spokenUserDataWithFormattingManager:(id)a3;
@end

@implementation WOSegmentAlert

- (id)spokenUserDataWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  WorkoutAlertSegment.spokenUserData(with:)(v4);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)spokenDescriptionWithFormattingManager:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___WOSegmentAlert_segmentMarker);
  v5 = *(&self->super.super.isa + OBJC_IVAR___WOSegmentAlert_activityType);
  v6 = *(&self->super.super.isa + OBJC_IVAR___WOSegmentAlert_activityMoveMode);
  v7 = a3;
  v8 = self;
  v9 = [(NLWorkoutAlert *)v8 type];
  v10 = [v4 spokenFullDescriptionWithFormattingManager:v7 workoutActivityType:v5 activityMoveMode:v6 alertType:v9 shouldSkipTime:*(&v8->super.super.isa + OBJC_IVAR___WOSegmentAlert_shouldHideTime)];

  return v10;
}

- (id)segmentDescription
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___WOSegmentAlert_segmentMarker);
  v3 = self;
  v4 = NLSessionActivitySegmentMarker.segmentDescription(alertType:)([(NLWorkoutAlert *)v3 type]);
  v6 = v5;

  v7 = MEMORY[0x20F2E6C00](v4, v6);

  return v7;
}

- (WOSegmentAlert)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end