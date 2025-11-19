@interface ConstraintUsageMetricsManager
- (void)clean;
- (void)recordWithSigningIdentifier:(id)a3 teamIdentifier:(id)a4 validationCategory:(int64_t)a5 constraintType:(int64_t)a6;
- (void)report;
@end

@implementation ConstraintUsageMetricsManager

- (void)recordWithSigningIdentifier:(id)a3 teamIdentifier:(id)a4 validationCategory:(int64_t)a5 constraintType:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = self;
  v16._countAndFlagsBits = v9;
  v16._object = v11;
  v17._countAndFlagsBits = v12;
  v17._object = v14;
  ConstraintUsageMetricsManager.record(signingIdentifier:teamIdentifier:validationCategory:constraintType:)(v16, v17, a5, a6);
}

- (void)report
{
  v2 = self;
  ConstraintUsageMetricsManager.report()();
}

- (void)clean
{
  v2 = self;
  ConstraintUsageMetricsManager.clean()();
}

@end