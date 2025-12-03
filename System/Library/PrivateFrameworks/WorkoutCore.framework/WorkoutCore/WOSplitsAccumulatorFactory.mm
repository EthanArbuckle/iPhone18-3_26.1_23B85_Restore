@interface WOSplitsAccumulatorFactory
+ (id)displayedAccumulatorFor:(id)for userDistanceUnit:(id)unit;
+ (id)makeAccumulatorsWithActivityType:(id)type builder:(id)builder userDistanceUnit:(id)unit powerAccumulator:(id)accumulator;
- (WOSplitsAccumulatorFactory)init;
@end

@implementation WOSplitsAccumulatorFactory

+ (id)makeAccumulatorsWithActivityType:(id)type builder:(id)builder userDistanceUnit:(id)unit powerAccumulator:(id)accumulator
{
  typeCopy = type;
  builderCopy = builder;
  unitCopy = unit;
  accumulatorCopy = accumulator;
  specialized static SplitsAccumulatorFactory.makeAccumulators(activityType:builder:userDistanceUnit:powerAccumulator:)(typeCopy, builderCopy, unitCopy, accumulatorCopy);

  type metadata accessor for NLSessionActivitySplitsAccumulator(0, &lazy cache variable for type metadata for NLSessionActivitySplitsAccumulator, off_277D86C70);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

+ (id)displayedAccumulatorFor:(id)for userDistanceUnit:(id)unit
{
  type metadata accessor for NLSessionActivitySplitsAccumulator(0, &lazy cache variable for type metadata for NLSessionActivitySplitsAccumulator, off_277D86C70);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  unitCopy = unit;
  v7 = specialized static SplitsAccumulatorFactory.displayedAccumulator(for:userDistanceUnit:)(v5, unitCopy);

  return v7;
}

- (WOSplitsAccumulatorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SplitsAccumulatorFactory();
  return [(WOSplitsAccumulatorFactory *)&v3 init];
}

@end