@interface WODownhillRun
+ (NSArray)metadataKeys;
+ (double)calculateWorkoutTimeWithDateInterval:(id)a3 pauseResumeEvents:(id)a4;
+ (id)makeDownhillRunWithDownhillRunEvent:(id)a3 workout:(id)a4 healthStore:(id)a5;
- (HKQuantity)averageHeartRate;
- (HKQuantity)distance;
- (NSString)description;
- (WODownhillRun)init;
- (WODownhillRun)initWithDownhillRunEvent:(id)a3 workoutTime:(double)a4 distance:(id)a5 averageHeartRate:(id)a6;
- (double)workoutTime;
- (void)setWorkoutTime:(double)a3;
@end

@implementation WODownhillRun

- (double)workoutTime
{
  v3 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWorkoutTime:(double)a3
{
  v5 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (WODownhillRun)initWithDownhillRunEvent:(id)a3 workoutTime:(double)a4 distance:(id)a5 averageHeartRate:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(v9, a5, a6, a4);

  return v12;
}

+ (id)makeDownhillRunWithDownhillRunEvent:(id)a3 workout:(id)a4 healthStore:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = specialized static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:)(v7, v8, v9);

  return v10;
}

+ (double)calculateWorkoutTimeWithDateInterval:(id)a3 pauseResumeEvents:(id)a4
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = specialized static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:)(v9, a4);

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
  v2 = self;
  v3 = DownhillRun.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end