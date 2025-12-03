@interface WOSplitsDisplayAccumulator
- (NLSessionActivitySplitsAccumulator)splitsAccumulator;
- (NSDate)splitStartDate;
- (WOSplitsDisplayAccumulator)init;
- (WOSplitsDisplayAccumulator)initWithBuilder:(id)builder splitsAccumulator:(id)accumulator activityType:(id)type powerAccumulator:(id)powerAccumulator;
- (double)definedSplitDistance;
- (double)splitAveragePower;
- (double)splitDistance;
- (double)splitDuration;
- (double)splitPace;
- (int64_t)splitIndex;
- (void)assignStartValues;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)setSplitsAccumulator:(id)accumulator;
- (void)splitComplete:(id)complete currentSplitEvents:(id)events;
@end

@implementation WOSplitsDisplayAccumulator

- (NLSessionActivitySplitsAccumulator)splitsAccumulator
{
  v3 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSplitsAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  selfCopy = self;
  specialized SplitsDisplayAccumulator.splitsAccumulator.setter(accumulatorCopy);
}

- (WOSplitsDisplayAccumulator)initWithBuilder:(id)builder splitsAccumulator:(id)accumulator activityType:(id)type powerAccumulator:(id)powerAccumulator
{
  builderCopy = builder;
  accumulatorCopy = accumulator;
  typeCopy = type;
  powerAccumulatorCopy = powerAccumulator;
  return SplitsDisplayAccumulator.init(builder:splitsAccumulator:activityType:powerAccumulator:)(builderCopy, accumulatorCopy, typeCopy, powerAccumulator);
}

- (void)assignStartValues
{
  selfCopy = self;
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
  selfCopy = self;
  v8 = v5;
  meterUnit = [v6 meterUnit];
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
  selfCopy = self;
  v3 = SplitsDisplayAccumulator.splitPace.getter();

  return v3;
}

- (int64_t)splitIndex
{
  v3 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
  completedSplits = [v4 completedSplits];
  v7 = [completedSplits count];

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
  selfCopy = self;
  SplitsDisplayAccumulator.splitStartDate.getter(v7);

  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v9.super.isa;
}

- (double)splitAveragePower
{
  selfCopy = self;
  SplitsDisplayAccumulator.splitAveragePower.getter();
  v4 = v3;

  return v4;
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SplitsDisplayAccumulator.dataProvider(_:didUpdate:)(provider, update);
  swift_unknownObjectRelease();
}

- (void)splitComplete:(id)complete currentSplitEvents:(id)events
{
  selfCopy = self;
  SplitsDisplayAccumulator.assignStartValues()();
}

@end