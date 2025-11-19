@interface WBSPasswordBreachConfigurationBagSnapshotTransformer
- (id)objectFromData:(id)a3;
@end

@implementation WBSPasswordBreachConfigurationBagSnapshotTransformer

- (id)objectFromData:(id)a3
{
  v3 = a3;
  v4 = [[WBSPasswordBreachConfigurationBag alloc] initWithSnapshotData:v3 error:0];

  return v4;
}

@end