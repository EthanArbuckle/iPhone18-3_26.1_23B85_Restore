@interface NLWorkoutCustomDistanceSplitsTracker
- (NLWorkoutAlertDelegate)alertDelegate;
- (NLWorkoutCustomDistanceSplitsTracker)init;
- (NLWorkoutCustomDistanceSplitsTracker)initWithActivityType:(id)a3 activityMoveMode:(int64_t)a4;
- (void)processCustomSplitEvent:(id)a3;
@end

@implementation NLWorkoutCustomDistanceSplitsTracker

- (NLWorkoutAlertDelegate)alertDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NLWorkoutCustomDistanceSplitsTracker)initWithActivityType:(id)a3 activityMoveMode:(int64_t)a4
{
  swift_unknownObjectWeakInit();
  v7 = a3;
  *(self + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_distanceType) = FIUIDistanceTypeForActivityType();
  *(self + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityType) = v7;
  *(self + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityMoveMode) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CustomDistanceSplitsTracker();
  return [(NLWorkoutCustomDistanceSplitsTracker *)&v9 init];
}

- (void)processCustomSplitEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  CustomDistanceSplitsTracker.processCustomSplitEvent(_:)(v4);
}

- (NLWorkoutCustomDistanceSplitsTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end