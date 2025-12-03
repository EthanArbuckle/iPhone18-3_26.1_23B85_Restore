@interface WBSPasswordWarningTopFraudTargetsTransformer
- (id)objectFromData:(id)data;
@end

@implementation WBSPasswordWarningTopFraudTargetsTransformer

- (id)objectFromData:(id)data
{
  dataCopy = data;
  v4 = [[WBSPasswordWarningTopFraudTargets alloc] initWithSnapshotData:dataCopy error:0];

  return v4;
}

@end