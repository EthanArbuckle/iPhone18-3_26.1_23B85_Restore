@interface NLWorkoutCustomTimeSplitsTracker
- (NLWorkoutAlertDelegate)alertDelegate;
- (NLWorkoutCustomTimeSplitsTracker)init;
- (NLWorkoutCustomTimeSplitsTracker)initWithTimeSpan:(double)a3 formattingManager:(id)a4;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
@end

@implementation NLWorkoutCustomTimeSplitsTracker

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  if (a4 == 3)
  {
    swift_unknownObjectRetain();
    v9 = self;
    [a3 activityDuration];
    v8 = v7;
    [objc_msgSend(a3 distanceProvider)];
    swift_unknownObjectRelease();
    specialized CustomTimeSplitsTracker.handleElapsedTimeUpdate(elapsedTime:distance:)(v8);
    swift_unknownObjectRelease();
  }
}

- (NLWorkoutAlertDelegate)alertDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NLWorkoutCustomTimeSplitsTracker)initWithTimeSpan:(double)a3 formattingManager:(id)a4
{
  *(self + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount) = 0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_timeSpan) = a3;
  *(self + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_formattingManager) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CustomTimeSplitsTracker();
  v7 = a4;
  return [(NLWorkoutCustomTimeSplitsTracker *)&v9 init];
}

- (NLWorkoutCustomTimeSplitsTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end