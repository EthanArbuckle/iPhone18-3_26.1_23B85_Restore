@interface PKApplicationProxy
+ (id)applicationProxyForBundleURL:(id)a3;
- (BOOL)isPlaceholder;
- (NSArray)plugInKitPlugins;
@end

@implementation PKApplicationProxy

+ (id)applicationProxyForBundleURL:(id)a3
{
  v3 = [MEMORY[0x1E69635E0] applicationProxyForBundleURL:a3];

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