@interface WOSegmentAlert
- (WOSegmentAlert)init;
- (id)segmentDescription;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
@end

@implementation WOSegmentAlert

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  WorkoutAlertSegment.spokenUserData(with:)(managerCopy);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___WOSegmentAlert_segmentMarker);
  v5 = *(&self->super.super.isa + OBJC_IVAR___WOSegmentAlert_activityType);
  v6 = *(&self->super.super.isa + OBJC_IVAR___WOSegmentAlert_activityMoveMode);
  managerCopy = manager;
  selfCopy = self;
  type = [(NLWorkoutAlert *)selfCopy type];
  v10 = [v4 spokenFullDescriptionWithFormattingManager:managerCopy workoutActivityType:v5 activityMoveMode:v6 alertType:type shouldSkipTime:*(&selfCopy->super.super.isa + OBJC_IVAR___WOSegmentAlert_shouldHideTime)];

  return v10;
}

- (id)segmentDescription
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___WOSegmentAlert_segmentMarker);
  selfCopy = self;
  v4 = NLSessionActivitySegmentMarker.segmentDescription(alertType:)([(NLWorkoutAlert *)selfCopy type]);
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