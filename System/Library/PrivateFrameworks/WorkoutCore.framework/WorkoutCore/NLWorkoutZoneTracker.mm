@interface NLWorkoutZoneTracker
+ (double)valueFor:(unint64_t)for dataProvider:(id)provider;
- (BOOL)enforceDelayBetweenAlerts;
- (FIUIWorkoutActivityType)activityType;
- (HKQuantity)currentDistance;
- (NLWorkoutAlertDelegate)alertDelegate;
- (NLWorkoutZoneTracker)init;
- (double)currentDuration;
- (double)minTimeBetweenAlerts;
- (void)clearRecoveryData;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)recoverFrom:(id)from;
- (void)recoverStateFromBuilder:(id)builder;
- (void)saveTargetZonesMetadata;
- (void)setActivityType:(id)type;
- (void)setCurrentDistance:(id)distance;
- (void)setCurrentDuration:(double)duration;
- (void)setEnforceDelayBetweenAlerts:(BOOL)alerts;
- (void)setMinTimeBetweenAlerts:(double)alerts;
- (void)updateDistanceUnit:(id)unit;
- (void)updateTargetZonesFrom:(id)from;
@end

@implementation NLWorkoutZoneTracker

- (FIUIWorkoutActivityType)activityType
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActivityType:(id)type
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = type;
  typeCopy = type;
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

- (void)setEnforceDelayBetweenAlerts:(BOOL)alerts
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  swift_beginAccess();
  *(self + v5) = alerts;
}

- (double)minTimeBetweenAlerts
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMinTimeBetweenAlerts:(double)alerts
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
  swift_beginAccess();
  *(self + v5) = alerts;
}

- (HKQuantity)currentDistance
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCurrentDistance:(id)distance
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = distance;
  distanceCopy = distance;
}

- (double)currentDuration
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCurrentDuration:(double)duration
{
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  *(self + v5) = duration;
}

- (void)updateTargetZonesFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  v5 = LiveWorkoutConfiguration.currentTargetZones.getter();
  ZoneTracker.updateTargetZones(_:)(v5);
}

- (void)recoverStateFromBuilder:(id)builder
{
  builderCopy = builder;
  selfCopy = self;
  metadata = [builderCopy metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9.value._rawValue = v6;
  ZoneTracker.recover(from:)(v9);
}

- (void)recoverFrom:(id)from
{
  if (from)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v7.value._rawValue = v4;
  ZoneTracker.recover(from:)(v7);
}

- (void)clearRecoveryData
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    v5 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B461640);
    [v4 removeMetadata:v5 forceTopLevel:1];

    swift_unknownObjectRelease();
  }
}

+ (double)valueFor:(unint64_t)for dataProvider:(id)provider
{
  swift_unknownObjectRetain();
  specialized static ZoneTracker.value(for:dataProvider:)(for, provider);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

- (void)saveTargetZonesMetadata
{
  selfCopy = self;
  ZoneTracker.saveTargetZonesMetadata()();
}

- (NLWorkoutZoneTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ZoneTracker.dataProvider(_:didUpdate:)(provider, update);
  swift_unknownObjectRelease();
}

- (void)updateDistanceUnit:(id)unit
{
  if (unit)
  {
    v6 = *(self + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
    *(self + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) = unit;
    selfCopy = self;
    unitCopy = unit;
  }

  else
  {
    __break(1u);
  }
}

@end