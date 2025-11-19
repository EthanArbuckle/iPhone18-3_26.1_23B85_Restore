@interface NLZoneTrackerFactory
+ (id)makeWithActivityType:(id)a3 liveWorkoutConfiguration:(id)a4 distanceUnit:(id)a5 metadataSavingDelegate:(id)a6 error:(id *)a7;
- (NLZoneTrackerFactory)init;
@end

@implementation NLZoneTrackerFactory

+ (id)makeWithActivityType:(id)a3 liveWorkoutConfiguration:(id)a4 distanceUnit:(id)a5 metadataSavingDelegate:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  v13 = LiveWorkoutConfiguration.currentTargetZones.getter();
  v14 = objc_allocWithZone(type metadata accessor for ZoneTracker());
  v15 = v12;
  swift_unknownObjectRetain();
  v16 = ZoneTracker.init(activityType:targetZones:distanceUnit:metadataSavingDelegate:)(v10, v13, v15, a6);
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