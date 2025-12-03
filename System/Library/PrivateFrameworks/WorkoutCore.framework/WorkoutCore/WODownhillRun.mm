@interface WODownhillRun
+ (NSArray)metadataKeys;
+ (double)calculateWorkoutTimeWithDateInterval:(id)interval pauseResumeEvents:(id)events;
+ (id)makeDownhillRunWithDownhillRunEvent:(id)event workout:(id)workout healthStore:(id)store;
- (HKQuantity)averageHeartRate;
- (HKQuantity)distance;
- (NSString)description;
- (WODownhillRun)init;
- (WODownhillRun)initWithDownhillRunEvent:(id)event workoutTime:(double)time distance:(id)distance averageHeartRate:(id)rate;
- (double)workoutTime;
- (void)setWorkoutTime:(double)time;
@end

@implementation WODownhillRun

- (double)workoutTime
{
  v3 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWorkoutTime:(double)time
{
  v5 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  *(self + v5) = time;
}

- (HKQuantity)distance
{
  v3 = OBJC_IVAR___WODownhillRun_distance;
  swift_beginAccess();
  return *(self + v3);
}

- (HKQuantity)averageHeartRate
{
  v3 = OBJC_IVAR___WODownhillRun_averageHeartRate;
  swift_beginAccess();
  return *(self + v3);
}

+ (NSArray)metadataKeys
{
  if (one-time initialization token for metadataKeys != -1)
  {
    swift_once();
  }

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (WODownhillRun)initWithDownhillRunEvent:(id)event workoutTime:(double)time distance:(id)distance averageHeartRate:(id)rate
{
  eventCopy = event;
  distanceCopy = distance;
  rateCopy = rate;
  v12 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(eventCopy, distance, rate, time);

  return v12;
}

+ (id)makeDownhillRunWithDownhillRunEvent:(id)event workout:(id)workout healthStore:(id)store
{
  eventCopy = event;
  workoutCopy = workout;
  storeCopy = store;
  v10 = specialized static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:)(eventCopy, workoutCopy, storeCopy);

  return v10;
}

+ (double)calculateWorkoutTimeWithDateInterval:(id)interval pauseResumeEvents:(id)events
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  if (events)
  {
    type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    events = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = specialized static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:)(v9, events);

  (*(v6 + 8))(v9, v5);
  return v10;
}

- (WODownhillRun)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  v3 = DownhillRun.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end