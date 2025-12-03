@interface NLZoneTrackerFactory
+ (id)makeWithActivityType:(id)type liveWorkoutConfiguration:(id)configuration distanceUnit:(id)unit metadataSavingDelegate:(id)delegate error:(id *)error;
- (NLZoneTrackerFactory)init;
@end

@implementation NLZoneTrackerFactory

+ (id)makeWithActivityType:(id)type liveWorkoutConfiguration:(id)configuration distanceUnit:(id)unit metadataSavingDelegate:(id)delegate error:(id *)error
{
  typeCopy = type;
  configurationCopy = configuration;
  unitCopy = unit;
  swift_unknownObjectRetain();
  v13 = LiveWorkoutConfiguration.currentTargetZones.getter();
  v14 = objc_allocWithZone(type metadata accessor for ZoneTracker());
  v15 = unitCopy;
  swift_unknownObjectRetain();
  v16 = ZoneTracker.init(activityType:targetZones:distanceUnit:metadataSavingDelegate:)(typeCopy, v13, v15, delegate);
  swift_unknownObjectRelease();

  return v16;
}

- (NLZoneTrackerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ZoneTrackerFactory();
  return [(NLZoneTrackerFactory *)&v3 init];
}

@end