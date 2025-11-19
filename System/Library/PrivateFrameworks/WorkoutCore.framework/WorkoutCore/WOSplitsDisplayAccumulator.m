@interface WOSplitsDisplayAccumulator
- (NLSessionActivitySplitsAccumulator)splitsAccumulator;
- (NSDate)splitStartDate;
- (WOSplitsDisplayAccumulator)init;
- (WOSplitsDisplayAccumulator)initWithBuilder:(id)a3 splitsAccumulator:(id)a4 activityType:(id)a5 powerAccumulator:(id)a6;
- (double)definedSplitDistance;
- (double)splitAveragePower;
- (double)splitDistance;
- (double)splitDuration;
- (double)splitPace;
- (int64_t)splitIndex;
- (void)assignStartValues;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)setSplitsAccumulator:(id)a3;
- (void)splitComplete:(id)a3 currentSplitEvents:(id)a4;
@end

@implementation WOSplitsDisplayAccumulator

- (NLSessionActivitySplitsAccumulator)splitsAccumulator
{
  v3 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSplitsAccumulator:(id)a3
{
  v5 = a3;
  v4 = self;
  specialized SplitsDisplayAccumulator.splitsAccumulator.setter(v5);
}

- (WOSplitsDisplayAccumulator)initWithBuilder:(id)a3 splitsAccumulator:(id)a4 activityType:(id)a5 powerAccumulator:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  return SplitsDisplayAccumulator.init(builder:splitsAccumulator:activityType:powerAccumulator:)(v9, v10, v11, a6);
}

- (void)assignStartValues
{
  v2 = self;
  SplitsDisplayAccumulator.assignStartValues()();
}

- (WOSplitsDisplayAccumulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)definedSplitDistance
{
  v3 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  [*(&self->super.isa + v3) definedDistance];
  return result;
}

- (double)splitDistance
{
  v3 = *(&self->super.isa + OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator);
  v4 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = objc_opt_self();
  v7 = self;
  v8 = v5;
  v9 = [v6 meterUnit];
  [v8 doubleValueForUnit_];
  v11 = v10;

  return v11;
}

- (double)splitDuration
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator);
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  return *(v2 + v3);
}

- (double)splitPace
{
  v2 = self;
  v3 = SplitsDisplayAccumulator.splitPace.getter();

  return v3;
}

- (int64_t)splitIndex
{
  v3 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;
  v6 = [v4 completedSplits];
  v7 = [v6 count];

  result = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  return result;
}

- (NSDate)splitStartDate
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  SplitsDisplayAccumulator.splitStartDate.getter(v7);

  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v9.super.isa;
}

- (double)splitAveragePower
{
  v2 = self;
  SplitsDisplayAccumulator.splitAveragePower.getter();
  v4 = v3;

  return v4;
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  SplitsDisplayAccumulator.dataProvider(_:didUpdate:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)splitComplete:(id)a3 currentSplitEvents:(id)a4
{
  v4 = self;
  SplitsDisplayAccumulator.assignStartValues()();
}

@end