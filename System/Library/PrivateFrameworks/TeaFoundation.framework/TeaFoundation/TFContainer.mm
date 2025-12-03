@interface TFContainer
- (TFContainer)initWithBundleAssemblies:(id)assemblies assemblies:(id)a4;
- (TFResolver)resolver;
@end

@implementation TFContainer

- (TFResolver)resolver
{
  v2 = BridgedContainer.resolver.getter();

  return v2;
}

- (TFContainer)initWithBundleAssemblies:(id)assemblies assemblies:(id)a4
{
  v4 = sub_1BF17A4DC();
  v5 = sub_1BF17A4DC();
  BridgedContainer.init(bundleAssemblies:assemblies:)(v4, v5);
  return result;
}

@end