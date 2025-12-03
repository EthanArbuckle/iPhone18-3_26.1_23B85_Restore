@interface PKApplicationProxy
+ (id)applicationProxyForBundleURL:(id)l;
- (BOOL)isPlaceholder;
- (NSArray)plugInKitPlugins;
@end

@implementation PKApplicationProxy

+ (id)applicationProxyForBundleURL:(id)l
{
  v3 = [MEMORY[0x1E69635E0] applicationProxyForBundleURL:l];

  return v3;
}

- (NSArray)plugInKitPlugins
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isPlaceholder
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end