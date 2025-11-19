@interface WOSplitsAccumulatorFactory
+ (id)displayedAccumulatorFor:(id)a3 userDistanceUnit:(id)a4;
+ (id)makeAccumulatorsWithActivityType:(id)a3 builder:(id)a4 userDistanceUnit:(id)a5 powerAccumulator:(id)a6;
- (WOSplitsAccumulatorFactory)init;
@end

@implementation WOSplitsAccumulatorFactory

+ (id)makeAccumulatorsWithActivityType:(id)a3 builder:(id)a4 userDistanceUnit:(id)a5 powerAccumulator:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  specialized static SplitsAccumulatorFactory.makeAccumulators(activityType:builder:userDistanceUnit:powerAccumulator:)(v9, v10, v11, v12);

  type metadata accessor for NLSessionActivitySplitsAccumulator(0, &lazy cache variable for type metadata for NLSessionActivitySplitsAccumulator, off_277D86C70);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

+ (id)displayedAccumulatorFor:(id)a3 userDistanceUnit:(id)a4
{
  type metadata accessor for NLSessionActivitySplitsAccumulator(0, &lazy cache variable for type metadata for NLSessionActivitySplitsAccumulator, off_277D86C70);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = specialized static SplitsAccumulatorFactory.displayedAccumulator(for:userDistanceUnit:)(v5, v6);

  return v7;
}

- (WOSplitsAccumulatorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SplitsAccumulatorFactory();
  return [(WOSplitsAccumulatorFactory *)&v3 init];
}

@end