@interface WBSPasswordBreachConfigurationBagSnapshotTransformer
- (id)objectFromData:(id)data;
@end

@implementation WBSPasswordBreachConfigurationBagSnapshotTransformer

- (id)objectFromData:(id)data
{
  dataCopy = data;
  v4 = [[WBSPasswordBreachConfigurationBag alloc] initWithSnapshotData:dataCopy error:0];

  return v4;
}

@end