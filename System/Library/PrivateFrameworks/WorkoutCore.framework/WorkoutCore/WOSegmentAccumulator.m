@interface WOSegmentAccumulator
- (NSArray)completedSegments;
- (NSString)logString;
- (WOSegmentAccumulator)init;
- (WOSegmentAccumulator)initWithBuilder:(id)a3 activityType:(id)a4 configuration:(id)a5 powerAccumulator:(id)a6;
- (double)segmentAveragePower;
- (double)segmentDuration;
- (double)segmentPace;
- (int64_t)segmentIndex;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)endCurrentSegmentWithCurrentElapsedTime:(double)a3;
- (void)recoverSegmentMarkersFrom:(id)a3;
- (void)setCompletedSegments:(id)a3;
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

- (void)setCompletedSegments:(id)a3
{
  _sSo8NSNumberCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivitySegmentMarker, off_277D86C68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (WOSegmentAccumulator)initWithBuilder:(id)a3 activityType:(id)a4 configuration:(id)a5 powerAccumulator:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = specialized SegmentAccumulator.init(builder:activityType:configuration:powerAccumulator:)(v9, v10, v11, a6);

  return v13;
}

- (void)endCurrentSegmentWithCurrentElapsedTime:(double)a3
{
  v4 = self;
  SegmentAccumulator.endCurrentSegment(currentElapsedTime:)(a3);
}

- (void)recoverSegmentMarkersFrom:(id)a3
{
  _sSo8NSNumberCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
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
  v2 = self;
  v3 = SegmentAccumulator.segmentPace.getter();

  return v3;
}

- (int64_t)segmentIndex
{
  v2 = self;
  v3 = SegmentAccumulator.segmentIndex.getter();

  return v3;
}

- (double)segmentAveragePower
{
  v2 = self;
  SegmentAccumulator.segmentAveragePower.getter();
  v4 = v3;

  return v4;
}

- (NSString)logString
{
  v2 = self;
  v3 = SegmentAccumulator.logString.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  SegmentAccumulator.dataProvider(_:didUpdate:)(a3, a4);
  swift_unknownObjectRelease();
}

@end