@interface NLWorkoutCustomTimeSplitsTracker
- (NLWorkoutAlertDelegate)alertDelegate;
- (NLWorkoutCustomTimeSplitsTracker)init;
- (NLWorkoutCustomTimeSplitsTracker)initWithTimeSpan:(double)span formattingManager:(id)manager;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
@end

@implementation NLWorkoutCustomTimeSplitsTracker

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  if (update == 3)
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    [provider activityDuration];
    v8 = v7;
    [objc_msgSend(provider distanceProvider)];
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

- (NLWorkoutCustomTimeSplitsTracker)initWithTimeSpan:(double)span formattingManager:(id)manager
{
  *(self + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount) = 0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_timeSpan) = span;
  *(self + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_formattingManager) = manager;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CustomTimeSplitsTracker();
  managerCopy = manager;
  return [(NLWorkoutCustomTimeSplitsTracker *)&v9 init];
}

- (NLWorkoutCustomTimeSplitsTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end