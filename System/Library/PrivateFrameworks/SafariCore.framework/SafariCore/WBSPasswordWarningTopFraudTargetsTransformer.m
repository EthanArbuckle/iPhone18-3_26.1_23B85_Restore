@interface WBSPasswordWarningTopFraudTargetsTransformer
- (id)objectFromData:(id)a3;
@end

@implementation WBSPasswordWarningTopFraudTargetsTransformer

- (id)objectFromData:(id)a3
{
  v3 = a3;
  v4 = [[WBSPasswordWarningTopFraudTargets alloc] initWithSnapshotData:v3 error:0];

  return v4;
}

@end