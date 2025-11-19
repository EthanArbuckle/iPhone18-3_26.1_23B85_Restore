@interface NLWorkoutZoneTracker
+ (double)valueFor:(unint64_t)a3 dataProvider:(id)a4;
- (BOOL)enforceDelayBetweenAlerts;
- (FIUIWorkoutActivityType)activityType;
- (HKQuantity)currentDistance;
- (NLWorkoutAlertDelegate)alertDelegate;
- (NLWorkoutZoneTracker)init;
- (double)currentDuration;
- (double)minTimeBetweenAlerts;
- (void)clearRecoveryData;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)recoverFrom:(id)a3;
- (void)recoverStateFromBuilder:(id)a3;
- (void)saveTargetZonesMetadata;
- (void)setActivityType:(id)a3;
- (void)setCurrentDistance:(id)a3;
- (void)setCurrentDuration:(double)a3;
- (void)setEnforceDelayBetweenAlerts:(BOOL)a3;
- (void)setMinTimeBetweenAlerts:(double)a3;
- (void)updateDistanceUnit:(id)a3;
- (void)updateTargetZonesFrom:(id)a3;
@end

@implementation NLWorkoutZoneTracker

- (FIUIWorkoutActivityType)activityType
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActivityType:(id)a3
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NLWorkoutAlertDelegate)alertDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)enforceDelayBetweenAlerts
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnforceDelayBetweenAlerts:(BOOL)a3
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)minTimeBetweenAlerts
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMinTimeBetweenAlerts:(double)a3
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (HKQuantity)currentDistance
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCurrentDistance:(id)a3
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (double)currentDuration
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCurrentDuration:(double)a3
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)updateTargetZonesFrom:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = LiveWorkoutConfiguration.currentTargetZones.getter();
  ZoneTracker.updateTargetZones(_:)(v5);
}

- (void)recoverStateFromBuilder:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [v4 metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9.value._rawValue = v6;
  ZoneTracker.recover(from:)(v9);
}

- (void)recoverFrom:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v7.value._rawValue = v4;
  ZoneTracker.recover(from:)(v7);
}

- (void)clearRecoveryData
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v6 = self;
    v5 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B461640);
    [v4 removeMetadata:v5 forceTopLevel:1];

    swift_unknownObjectRelease();
  }
}

+ (double)valueFor:(unint64_t)a3 dataProvider:(id)a4
{
  swift_unknownObjectRetain();
  specialized static ZoneTracker.value(for:dataProvider:)(a3, a4);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

- (void)saveTargetZonesMetadata
{
  v2 = self;
  ZoneTracker.saveTargetZonesMetadata()();
}

- (NLWorkoutZoneTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  ZoneTracker.dataProvider(_:didUpdate:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)updateDistanceUnit:(id)a3
{
  if (a3)
  {
    v6 = *(self + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
    *(self + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) = a3;
    v4 = self;
    v5 = a3;
  }

  else
  {
    __break(1u);
  }
}

@end