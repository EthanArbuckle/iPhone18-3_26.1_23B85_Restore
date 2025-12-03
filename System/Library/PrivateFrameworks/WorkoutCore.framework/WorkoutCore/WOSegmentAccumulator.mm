@interface WOSegmentAccumulator
- (NSArray)completedSegments;
- (NSString)logString;
- (WOSegmentAccumulator)init;
- (WOSegmentAccumulator)initWithBuilder:(id)builder activityType:(id)type configuration:(id)configuration powerAccumulator:(id)accumulator;
- (double)segmentAveragePower;
- (double)segmentDuration;
- (double)segmentPace;
- (int64_t)segmentIndex;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)endCurrentSegmentWithCurrentElapsedTime:(double)time;
- (void)recoverSegmentMarkersFrom:(id)from;
- (void)setCompletedSegments:(id)segments;
@end

@implementation WOSegmentAccumulator

- (NSArray)completedSegments
{
  v3 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v4 = *(self + v3);
  _sSo8NSNumberCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivitySegmentMarker, off_277D86C68);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setCompletedSegments:(id)segments
{
  _sSo8NSNumberCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivitySegmentMarker, off_277D86C68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (WOSegmentAccumulator)initWithBuilder:(id)builder activityType:(id)type configuration:(id)configuration powerAccumulator:(id)accumulator
{
  builderCopy = builder;
  typeCopy = type;
  configurationCopy = configuration;
  accumulatorCopy = accumulator;
  v13 = specialized SegmentAccumulator.init(builder:activityType:configuration:powerAccumulator:)(builderCopy, typeCopy, configurationCopy, accumulator);

  return v13;
}

- (void)endCurrentSegmentWithCurrentElapsedTime:(double)time
{
  selfCopy = self;
  SegmentAccumulator.endCurrentSegment(currentElapsedTime:)(time);
}

- (void)recoverSegmentMarkersFrom:(id)from
{
  _sSo8NSNumberCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  SegmentAccumulator.recoverSegmentMarkers(from:)(v4);
}

- (WOSegmentAccumulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)segmentDuration
{
  v2 = *(self + OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator);
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  return *(v2 + v3);
}

- (double)segmentPace
{
  selfCopy = self;
  v3 = SegmentAccumulator.segmentPace.getter();

  return v3;
}

- (int64_t)segmentIndex
{
  selfCopy = self;
  v3 = SegmentAccumulator.segmentIndex.getter();

  return v3;
}

- (double)segmentAveragePower
{
  selfCopy = self;
  SegmentAccumulator.segmentAveragePower.getter();
  v4 = v3;

  return v4;
}

- (NSString)logString
{
  selfCopy = self;
  v3 = SegmentAccumulator.logString.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SegmentAccumulator.dataProvider(_:didUpdate:)(provider, update);
  swift_unknownObjectRelease();
}

@end