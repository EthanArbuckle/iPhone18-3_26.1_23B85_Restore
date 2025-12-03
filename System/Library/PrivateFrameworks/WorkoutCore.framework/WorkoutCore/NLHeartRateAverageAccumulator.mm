@interface NLHeartRateAverageAccumulator
- ($B42DDA7905377C1B85A751F444708923)heartRateData;
- ($B42DDA7905377C1B85A751F444708923)lastAveragingSegmentHeartRateData;
- (NLHeartRateAverageAccumulator)initWithBuilder:(id)builder averageInterval:(double)interval;
- (NLHeartRateAverageAccumulator)initWithBuilder:(id)builder staleTimeout:(double)timeout;
- (void)markAveragingSegment;
- (void)updateWithStatistics:(id)statistics;
@end

@implementation NLHeartRateAverageAccumulator

- (NLHeartRateAverageAccumulator)initWithBuilder:(id)builder averageInterval:(double)interval
{
  builderCopy = builder;
  v6 = specialized HeartRateAverageAccumulator.init(builder:averageInterval:)(builderCopy, interval);

  return v6;
}

- (void)updateWithStatistics:(id)statistics
{
  statisticsCopy = statistics;
  selfCopy = self;
  HeartRateAverageAccumulator.update(with:)(statisticsCopy);
}

- ($B42DDA7905377C1B85A751F444708923)heartRateData
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for HeartRateAverageAccumulator();
  v4 = v12.receiver;
  [($B42DDA7905377C1B85A751F444708923 *)&v12 heartRateData];
  v5 = OBJC_IVAR___NLHeartRateAverageAccumulator_currentAverageAccumulator;
  swift_beginAccess();
  v6 = *&v4[v5];

  static Date.timeIntervalSinceReferenceDate.getter();
  v8 = WindowedDiscreteAccumulator.cachedAverage(now:)(v7);

  retstr->var0 = v8;
  retstr->var1 = 1;
  *&retstr->var2 = v10;
  *&retstr->var4 = v11;
  return result;
}

- ($B42DDA7905377C1B85A751F444708923)lastAveragingSegmentHeartRateData
{
  selfCopy = self;
  HeartRateAverageAccumulator.lastAveragingSegmentHeartRateData.getter(v10);
  v5 = *v10;
  v6 = v10[1];

  v8 = v11;
  v9 = v12;
  retstr->var0 = v5;
  retstr->var1 = v6;
  *&retstr->var2 = v8;
  *&retstr->var4 = v9;
  return result;
}

- (void)markAveragingSegment
{
  selfCopy = self;
  HeartRateAverageAccumulator.markAveragingSegment()();
}

- (NLHeartRateAverageAccumulator)initWithBuilder:(id)builder staleTimeout:(double)timeout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end