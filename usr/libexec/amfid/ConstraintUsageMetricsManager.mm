@interface ConstraintUsageMetricsManager
- (void)clean;
- (void)recordWithSigningIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier validationCategory:(int64_t)category constraintType:(int64_t)type;
- (void)report;
@end

@implementation ConstraintUsageMetricsManager

- (void)recordWithSigningIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier validationCategory:(int64_t)category constraintType:(int64_t)type
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  selfCopy = self;
  v16._countAndFlagsBits = v9;
  v16._object = v11;
  v17._countAndFlagsBits = v12;
  v17._object = v14;
  ConstraintUsageMetricsManager.record(signingIdentifier:teamIdentifier:validationCategory:constraintType:)(v16, v17, category, type);
}

- (void)report
{
  selfCopy = self;
  ConstraintUsageMetricsManager.report()();
}

- (void)clean
{
  selfCopy = self;
  ConstraintUsageMetricsManager.clean()();
}

@end