@interface NLWorkoutCustomDistanceSplitsTracker
- (NLWorkoutAlertDelegate)alertDelegate;
- (NLWorkoutCustomDistanceSplitsTracker)init;
- (NLWorkoutCustomDistanceSplitsTracker)initWithActivityType:(id)type activityMoveMode:(int64_t)mode;
- (void)processCustomSplitEvent:(id)event;
@end

@implementation NLWorkoutCustomDistanceSplitsTracker

- (NLWorkoutAlertDelegate)alertDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NLWorkoutCustomDistanceSplitsTracker)initWithActivityType:(id)type activityMoveMode:(int64_t)mode
{
  swift_unknownObjectWeakInit();
  typeCopy = type;
  *(self + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_distanceType) = FIUIDistanceTypeForActivityType();
  *(self + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityType) = typeCopy;
  *(self + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityMoveMode) = mode;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CustomDistanceSplitsTracker();
  return [(NLWorkoutCustomDistanceSplitsTracker *)&v9 init];
}

- (void)processCustomSplitEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  CustomDistanceSplitsTracker.processCustomSplitEvent(_:)(eventCopy);
}

- (NLWorkoutCustomDistanceSplitsTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end